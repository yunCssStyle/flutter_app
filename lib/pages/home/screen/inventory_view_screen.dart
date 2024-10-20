import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/services/inventory_service.dart';
import 'package:minewarz_app/pages/home/widget/inventory/inventory_list_btns_widget.dart';
import 'package:minewarz_app/pages/home/widget/inventory/inventory_text_widget.dart';
import 'package:minewarz_app/pages/home/widget/inventory/jjack_ticket_widget.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_widget.dart';

class InvertoryViewScreen extends ConsumerStatefulWidget {
  const InvertoryViewScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<InvertoryViewScreen> createState() =>
      _InvertoryViewScreenState();
}

class _InvertoryViewScreenState extends ConsumerState<InvertoryViewScreen> {
  late int _selectedId = 0; // 선택된 아이디
  late int _selectedIndex = 0; // 선택된 인덱스
  List btnsList = []; // 버튼 위치 저장 배열
  List greenKey = []; // 스크롤 위치 저장 배열
  bool isModal = false;
  bool fetchedData = false; // 상태 변수
  bool dataInit = false; // 상태 변수

  int totalMiningPower = 0; // miningPower의 합 계산
  int activeCount = 0; // active 값이 true인 항목의 수 계산
  int highestLevel = 0; // 가장 높은 level 값 찾기

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  Future<void> _asyncMethod() async {
    setState(() {
      fetchedData = false;
      dataInit = true; // 상태 변수 true
    });
    // await Future.delayed(const Duration(seconds: 3));
    final inventoryServices = ref.read(inventoryServicesProvider); // 인베토리 api
    await inventoryServices.getInventory(); // 인베토리 리스트 정보 조회 api 호출
    await ref.read(inventoryProvider.notifier).setInventoryData();
    final inventory = ref.read(inventoryProvider);
    if (inventory is InventoryModel && inventory.data != null) {
      if (inventory.data!.mines.isNotEmpty) {
        // 각 인벤토리 버튼 위치화 스크롤 위치 저장
        for (int i = 0; i < inventory.data!.mines.length + 1; i++) {
          btnsList.add(SuperTooltipController());
          greenKey.add(GlobalKey());
        }
        stateChange();
        setState(() {
          _selectedIndex = inventory.data!.mines.length + 1;
          fetchedData = true;
          dataInit = false; // 상태 변수 true
        });
      } else {
        setState(() {
          dataInit = false; // 상태 변수 true
        });
      }
    }
  }

  @override
  void dispose() {
    fetchedData = false; // 상태 변수 false
    btnsList = []; // 버튼 위치 초기화
    greenKey = []; // 스크롤 위치 초기화
    super.dispose();
  }

  // 인베토리 클릭시
  void profileClick(index, profileIndex, length) {
    Scrollable.ensureVisible(
      // 스크롤 이동
      greenKey[index].currentContext!, // 스크롤 위치로 이동
      duration: const Duration(milliseconds: 300), // 이동 시간
    );
    if (_selectedIndex != length + 1) {
      // 선택된 인덱스가 있을 경우
      btnsList[_selectedIndex].hideTooltip(); // 이전에 선}택된 인베토리 버튼 닫기
    }
    if (_selectedId == profileIndex.id) {
      // 선택된 아이디가 있을 경우
      setState(() {
        _selectedId = 0; // 선택된 아이디 초기화
        _selectedIndex = length + 1; // 선택된 인덱스 초기화
      });
      // ref.read(selectedProvider.notifier).selectedClear();
    } else {
      // 선택된 아이디가 없을 경우
      setState(() {
        _selectedIndex = index; // 선택된 인덱스 저장
        _selectedId = profileIndex.id; // 선택된 아이디 저장
      });
    }
  }

  void btnsClose(index, length) {
    //인베토리 버튼 영역 닫기
    btnsList[index].hideTooltip(); // 버튼 닫기
    _asyncMethod();
    setState(() {
      _selectedId = 0; // 선택된 아이디 초기화
      _selectedIndex = length + 1; // 선택된 인덱스 초기화
    });
    // _asyncMethod();
  }

  void stateChange() async {
    int activeNo = 0;
    final inventory = ref.read(inventoryProvider);
    if (inventory is InventoryModel && inventory.data != null) {
      if (inventory.data!.mines.isNotEmpty) {
        setState(() {
          totalMiningPower = 0;
        });
        for (var mine in inventory.data!.mines) {
          // miningPower의 합 계산
          // active 값이 true인 항목의 수 계산
          if (mine.active == true) {
            activeNo++;
            setState(() {
              totalMiningPower += mine.miningPower;
            });
          }
          final level = mine.level;
          if (level > highestLevel) {
            setState(() {
              highestLevel = level;
            });
          }
        }
        activeCount = activeNo;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final inventory = ref.watch(inventoryProvider);
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                      'assets/images/home/inventory/inventory_bg.png'),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat),
            ),
          ),
        ),
        CustomScrollView(
          slivers: <Widget>[
            const DefaultAppbar(
              title: 'Inventory',
              topBg: 'assets/images/home/inventory/top_bg.png',
            ),
            InventoryTextWidget(
              mzp: totalMiningPower,
              slot: highestLevel + 1,
              equip: activeCount,
              data: inventory is InventoryModel && inventory.data == null
                  ? false
                  : true,
            ),
            if (inventory is InventoryModel)
              SliverPadding(
                padding:
                    EdgeInsets.only(left: 16.w, right: 16.w, bottom: 200.w),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 9.5.w,
                    crossAxisSpacing: 9.5.w,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      // 잭팟티켓이 0보다 클때 출력
                      if (index == inventory.data!.mines.length) {
                        return inventory.data!.ticket.count > 0
                            ? Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  JjackTicketWidget(
                                    count: inventory.data!.ticket.count,
                                    lock: true,
                                  ),
                                  if (!inventory.data!.ticket.readed)
                                    Positioned(
                                      top: -6.w,
                                      right: -6.w,
                                      child: SvgPicture.asset(
                                        height: 16.h,
                                        'assets/images/home/icn_new.svg',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                ],
                              )
                            : Container();
                      }
                      if (fetchedData) {
                        final mines = inventory.data!.mines; // 인벤토리 리스트 정보
                        final length = mines.length; // 인베토리 리스트 정보 길이
                        final minesIndex = mines[index]; // 인베토리 리스트 정보 중 하나
                        return GridTile(
                          child: !minesIndex.locked
                              ? SuperTooltip(
                                  verticalOffset: 60.w,
                                  showBarrier: false,
                                  controller: btnsList[index],
                                  onShow: () async {
                                    profileClick(index, minesIndex, length);
                                  },
                                  isTooltip: false,
                                  barrierColor: Colors.black.withOpacity(0),
                                  content: SizedBox(
                                    height: !mines[index].active
                                        ? mines.any((element) =>
                                                element.isLevel(mines[index]))
                                            ? 154.w
                                            : 100.w
                                        : mines.any((element) =>
                                                element.isLevel(mines[index]))
                                            ? 154.w
                                            : 100.w,
                                    width: 108.w,
                                    child: InventoryListBtnsWidget(
                                      isActive: highestLevel + 1 == activeCount
                                          ? true
                                          : false,
                                      callback: (index, length) =>
                                          btnsClose(index, length),
                                      id: mines[index].id,
                                      index: index,
                                      length: length,
                                      active: mines[index].active,
                                      upgrade: mines.any((element) =>
                                          element.isLevel(mines[index])),
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    key: greenKey[index],
                                    child: Opacity(
                                      opacity: _selectedId == 0
                                          ? 1
                                          : _selectedId == mines[index].id
                                              ? 1
                                              : 0.4,
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          MiningWidget(
                                            level: mines[index].level,
                                            mp: mines[index].miningPower,
                                            upgrade: mines.any((element) =>
                                                element.isLevel(mines[index])),
                                            equipped: mines[index].active,
                                            gauge: mines[index].energy,
                                          ),
                                          if (!mines[index].readed)
                                            Positioned(
                                              top: -6.w,
                                              right: -6.w,
                                              child: SvgPicture.asset(
                                                height: 16.h,
                                                'assets/images/home/icn_new.svg',
                                                fit: BoxFit.fitHeight,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  key: greenKey[index],
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        MiningWidget(
                                          level: mines[index].level,
                                          mp: mines[index].miningPower,
                                          upgrade: mines.any((element) =>
                                              element.isLevel(mines[index])),
                                          equipped: mines[index].active,
                                          gauge: mines[index].energy,
                                        ),
                                        if (!mines[index].readed)
                                          Positioned(
                                            top: -6.w,
                                            right: -6.w,
                                            child: SvgPicture.asset(
                                              height: 16.h,
                                              'assets/images/home/icn_new.svg',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        Positioned(
                                            top: 0,
                                            right: 0,
                                            left: 0,
                                            bottom: 0,
                                            child: Center(
                                              child: Image.asset(
                                                'assets/images/home/inventory/lock_img.png',
                                                height: 40.h,
                                                fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                        );
                      }
                      return null;
                    },
                    childCount: inventory.data!.ticket.count > 0
                        ? inventory.data!.mines.length + 1
                        : inventory.data!.mines.length,
                  ),
                ),
              ),
          ],
        ),
        if (inventory is InventoryLoading || dataInit) const LoadingWidget(),
      ],
    );
  }
}
