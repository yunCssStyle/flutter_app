import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/model/purchase_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/appbar/services/purchase_service.dart';

final bool _kAutoConsume = Platform.isIOS || true;

const String _kConsumableId = 'minewarz00001';

const List<String> _kProductIds = <String>[
  _kConsumableId,
];

class PurchaseWidget extends ConsumerStatefulWidget {
  final Function startCallback;
  final Function callback;
  const PurchaseWidget(
      {super.key, required this.callback, required this.startCallback});

  @override
  ConsumerState<PurchaseWidget> createState() => _PurchaseWidgetState();
}

class _PurchaseWidgetState extends ConsumerState<PurchaseWidget> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<String> _notFoundIds = <String>[];
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];
  bool _isAvailable = false;
  bool _loading = true;
  String iosReceipt = '';

  @override
  void initState() {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchase.purchaseStream;
    _subscription =
        purchaseUpdated.listen((List<PurchaseDetails> purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (Object error) {
      // handle error here.
    });
    initStoreInfo();
    super.initState();
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isAvailable = isAvailable;
        _products = <ProductDetails>[];
        _purchases = <PurchaseDetails>[];
        _notFoundIds = <String>[];
        _loading = false;
      });
      return;
    }
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
    }
    final ProductDetailsResponse productDetailResponse =
        await _inAppPurchase.queryProductDetails(_kProductIds.toSet());

    if (productDetailResponse.error != null) {
      return;
    }
    if (productDetailResponse.productDetails.isEmpty) {
      return;
    }

    setState(() {
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _notFoundIds = productDetailResponse.notFoundIDs;
      _loading = false;
    });
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      height: 40.w,
      child: _buildProductList(),
    );
  }

  _buildProductList() {
    if (_loading) {
      return Container(
        color: Colors.black.withOpacity(0.5),
        child: const LoadingWidget(isPositioned: false),
      );
    }
    if (!_isAvailable) {
      return Container();
    }
    final List<Widget> productList = <Widget>[];
    if (_notFoundIds.isNotEmpty) {
      productList.add(const Text(
          'This app needs special configuration to run. Please see example/README.md for instructions.'));
    }

    final Map<String, PurchaseDetails> purchases =
        Map<String, PurchaseDetails>.fromEntries(
            _purchases.map((PurchaseDetails purchase) {
      if (purchase.pendingCompletePurchase) {
        _inAppPurchase.completePurchase(purchase);
      }
      return MapEntry<String, PurchaseDetails>(purchase.productID, purchase);
    }));
    productList.addAll(_products.map(
      (ProductDetails productDetails) {
        final PurchaseDetails? previousPurchase = purchases[productDetails.id];
        return Expanded(
          child: previousPurchase != null && Platform.isIOS
              ? ElevatedButton(
                  onPressed: () => confirmPriceChange(context),
                  child: const Text(
                    'Confirm Price Change',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.01),
                    foregroundColor: Colors.black.withOpacity(0.01),
                    shadowColor: Colors.black.withOpacity(0.01),
                  ),
                  onPressed: () {
                    widget.startCallback();
                    late PurchaseParam purchaseParam;
                    if (Platform.isAndroid) {
                      final GooglePlayPurchaseDetails? oldSubscription =
                          _getOldSubscription(productDetails, purchases);

                      purchaseParam = GooglePlayPurchaseParam(
                          productDetails: productDetails,
                          changeSubscriptionParam: (oldSubscription != null)
                              ? ChangeSubscriptionParam(
                                  oldPurchaseDetails: oldSubscription,
                                  prorationMode:
                                      ProrationMode.immediateWithTimeProration,
                                )
                              : null);
                    } else {
                      purchaseParam = PurchaseParam(
                        productDetails: productDetails,
                      );
                    }

                    if (productDetails.id == _kConsumableId) {
                      _inAppPurchase.buyConsumable(
                        purchaseParam: purchaseParam,
                        autoConsume: _kAutoConsume,
                      );
                    } else {
                      _inAppPurchase.buyNonConsumable(
                        purchaseParam: purchaseParam,
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: Offset(6.w, 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          height: 22.w,
                          decoration: BoxDecoration(
                            color: AppColor.darkYellow,
                            border: Border.all(
                              color: Colors.black,
                              width: 2.w,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              productDetails.price,
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontWeight: FontWeight.w700,
                                fontSize: 18.w,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    ));

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[] + productList,
    );
  }

  void showPendingUI() {
    setState(() {});
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    final myInfo = ref.watch(myInfoProvider);
    if (purchaseDetails.productID == _kConsumableId) {
      if (Platform.isAndroid) {
        try {
          Map<String, dynamic> jsonMap = json
              .decode(purchaseDetails.verificationData.localVerificationData);
          await ref.read(purchaseServicesProvider).postPurchaseGoolgle(
                  body: PurchaseGoogle(
                productId: jsonMap['productId'],
                purchaseToken: jsonMap['purchaseToken'],
              ));
          await ref
              .read(myInfoProvider.notifier)
              .purchase()
              .then((value) async {
            if (value) {
              ref.read(myInfoProvider.notifier).setMyInfoData();
              // await Future.delayed(const Duration(seconds: 5));
              if (myInfo is MyInfoModel) {
                widget.callback();
              }
            }
          });
        } catch (e) {
          // error exception catch
        }
      } else {
        try {
          await ref.read(purchaseServicesProvider).postPurchaseApple(
                  body: PurchaseApple(
                receiptData:
                    purchaseDetails.verificationData.localVerificationData,
              ));
          await ref
              .read(myInfoProvider.notifier)
              .purchase()
              .then((value) async {
            if (value) {
              ref.read(myInfoProvider.notifier).setMyInfoData();
              // await Future.delayed(const Duration(seconds: 5));
              if (myInfo is MyInfoModel) {
                widget.callback();
              }
            }
          });
          // widget.callback();
        } catch (e) {
          // error exception catch
        }
      }
      setState(() {
        // iosReceipt = purchaseDetails.verificationData.localVerificationData;
      });
    } else {
      setState(() {
        // _purchases.add(purchaseDetails);
      });
    }
  }

  void handleError(IAPError error) {}

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    return Future<bool>.value(true);
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {}

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          final bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            unawaited(deliverProduct(purchaseDetails));
          } else {
            _handleInvalidPurchase(purchaseDetails);
            return;
          }
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          widget.callback();
        }
        if (Platform.isAndroid) {
          if (!_kAutoConsume && purchaseDetails.productID == _kConsumableId) {
            final InAppPurchaseAndroidPlatformAddition androidAddition =
                _inAppPurchase.getPlatformAddition<
                    InAppPurchaseAndroidPlatformAddition>();
            await androidAddition.consumePurchase(purchaseDetails);
          }
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> confirmPriceChange(BuildContext context) async {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iapStoreKitPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iapStoreKitPlatformAddition.showPriceConsentIfNeeded();
    }
  }

  GooglePlayPurchaseDetails? _getOldSubscription(
      ProductDetails productDetails, Map<String, PurchaseDetails> purchases) {
    GooglePlayPurchaseDetails? oldSubscription;
    return oldSubscription;
  }
}

class ExamplePaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}
