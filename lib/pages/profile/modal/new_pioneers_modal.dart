import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/number_pagination.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/provider/new_pioneers_provider.dart';
import 'package:minewarz_app/pages/profile/widget/profile_img_widget.dart';

class NewPioneersModal extends ConsumerStatefulWidget {
  const NewPioneersModal({super.key});

  @override
  ConsumerState<NewPioneersModal> createState() => _NewPioneersModalState();
}

class _NewPioneersModalState extends ConsumerState<NewPioneersModal> {
  bool dataInit = true;
  int selectedPageNumber = 1;
  int pages = 1;
  int listCount = 1;
  int pagesLast = 1;
  bool lastCall = false;
  @override
  void initState() {
    super.initState();
    ref.read(newProfileProvider.notifier).getInitData(
          page: 0,
          size: profilesPageSize,
        );
  }

  @override
  Widget build(BuildContext context) {
    final newProfile = ref.watch(newProfileProvider);
    if (newProfile is ProfileListModel) {
      setState(() {
        pages = (newProfile.totalCount / profilesPageSize).ceil();
        listCount = newProfile.totalCount -
            ((newProfile.totalCount / profilesPageSize).floor()) *
                profilesPageSize;
        pagesLast = (newProfile.totalCount / profilesPageSize).floor();
      });
      setState(() {
        dataInit = false;
        lastCall = pagesLast == newProfile.page &&
                selectedPageNumber - 1 > newProfile.page
            ? true
            : false;
      });
    }
    return newProfile is ProfileListModel
        ? Stack(
            clipBehavior: Clip.none,
            children: [
              //ectAppBarHeight
              Positioned(
                top: DeviceHeight().ectAppBarHeight(40.w),
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'NFTs: ${newProfile.totalCount.toString()}',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Chaloops',
                                fontSize: 16.w,
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: !dataInit
                              ? GridView.builder(
                                  shrinkWrap: true,
                                  dragStartBehavior: DragStartBehavior.start,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount:
                                      newProfile.pioneers.length, //item 개수
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                                    childAspectRatio:
                                        1, //item 의 가로 1, 세로 2 의 비율
                                    crossAxisSpacing: 4.w, //수직 Padding
                                    mainAxisSpacing: 4.w, //수평 Padding
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final profileIndex =
                                        newProfile.pioneers[index];
                                    return GestureDetector(
                                      onTap: () {
                                        if (profileIndex.stat == null) {
                                          Navigator.of(context).popUntil(
                                              (route) => route.isFirst);
                                          ref
                                              .read(newProfileSelectedProvider
                                                  .notifier)
                                              .setProfileSelectedData(
                                                  profileIndex);
                                        }
                                      },
                                      child: Stack(
                                        children: [
                                          ProfileImgWidget(
                                            readed: profileIndex.readed,
                                            type: profileIndex.type,
                                            url: profileIndex.url,
                                          ),
                                          if (profileIndex.stat != null)
                                            Container(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                )
                              : const LoadingWidget(isPositioned: false),
                        ),
                        NumberPagination(
                          colorPrimary: Colors.black,
                          colorSub: AppColor.lightRed,
                          onPageChanged: (int pageNumber) async {
                            await ref.read(newProfileProvider.notifier).read();
                            setState(() {
                              selectedPageNumber = pageNumber;
                              dataInit = true;
                            });
                            ref.read(newProfileProvider.notifier).getInitData(
                                  page: selectedPageNumber - 1,
                                  size:
                                      !lastCall ? profilesPageSize : listCount,
                                ); // 프로필 리스트 정보 조회
                            await Future.delayed(const Duration(seconds: 1));
                            setState(() {
                              dataInit = false;
                            });
                          },
                          pageTotal: pages,
                          pageInit:
                              selectedPageNumber, // picked number when init page
                        ),
                      ]),
                ),
              ),
            ],
          )
        : const LoadingWidget();
  }
}
