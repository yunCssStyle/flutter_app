import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/number_pagination.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';

import 'package:minewarz_app/pages/profile/widget/profile_list/profile_list_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileListScreen extends ConsumerStatefulWidget {
  const ProfileListScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileListScreen> createState() => _ProfileListScreenState();
}

class _ProfileListScreenState extends ConsumerState<ProfileListScreen> {
  bool dataInit = true;
  int selectedPageNumber = 1;
  int pages = 1;
  int listCount = 1;
  int pagesLast = 1;
  bool lastCall = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(profileListProvider.notifier).getInitData(); // 프로필 리스트 정보 조회
  }

  collectionCilck() async {
    final url = Uri.parse(
        'https://docs.minewarz.io/usable-nft-collection/collaborations-nfts');
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileList = ref.watch(profileListProvider); // 프로필 리스트 정보 조회
    if (profileList is ProfileListModel) {
      setState(() {
        pages = (profileList.totalCount / profilesPageSize).ceil();
        listCount = profileList.totalCount -
            ((profileList.totalCount / profilesPageSize).floor()) *
                profilesPageSize;
        pagesLast = (profileList.totalCount / profilesPageSize).floor();
      });
      setState(() {
        dataInit = false;
        lastCall = pagesLast == profileList.page &&
                selectedPageNumber - 1 > profileList.page
            ? true
            : false;
      });
    }
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  profileList is ProfileListModel // 프로필 리스트 정보가 있을 경우
                      ? profileList
                              .pioneers.isEmpty // 프로필 리스트가 있을 경우에 따른 이미지 출력
                          ? 'assets/images/common/profile_background.png'
                          : 'assets/images/profile/profilelist_bg.png'
                      : 'assets/images/common/profile_background.png',
                ),
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
        if (profileList is ProfileListModel) // 프로필 리스트 정보 api 호출 성공 시
          Padding(
            padding: EdgeInsets.only(
              bottom: DeviceHeight().fullbackBtn(100.w),
            ),
            child: ProfileListWidget(
              page: selectedPageNumber - 1,
              pageLoading: dataInit,
              listCount: listCount,
              lastCall: lastCall,
            ),
          ),
        if (profileList is ProfileListError) // 프로필 리스트 정보 api 호출 실패 시
          Padding(
            padding: EdgeInsets.only(
              bottom: DeviceHeight().fullbackBtn(100.w),
            ),
            child: ProfileListWidget(
              page: selectedPageNumber - 1,
              pageLoading: false,
              listCount: listCount,
              lastCall: lastCall,
            ),
          ),
        // 콜렉션 정보 버튼
        Positioned(
          bottom: DeviceHeight().fullbackBtn(86.w),
          right: 16.w,
          child: MotionButton(
            onPressed: () => collectionCilck(),
            child: Image.asset(
              width: 78.w,
              'assets/images/profile/available.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        if (profileList is ProfileListModel &&
            profileList.pioneers.isNotEmpty) //
          Positioned(
            bottom: DeviceHeight().fullbackBtn(16.w),
            right: 16.w,
            left: 80.w,
            child: NumberPagination(
              onPageChanged: (int pageNumber) async {
                await ref.read(profileListProvider.notifier).read();
                // snackbar
                setState(() {
                  selectedPageNumber = pageNumber;
                  dataInit = true;
                });
                ref.read(profileListProvider.notifier).getInitData(
                      page: selectedPageNumber - 1,
                      size: !lastCall ? profilesPageSize : listCount,
                    ); // 프로필 리스트 정보 조회
                await Future.delayed(const Duration(seconds: 1));
                setState(() {
                  dataInit = false;
                });
              },
              pageTotal: pages,
              pageInit: selectedPageNumber, // picked number when init page
            ),
          ),
        // Pioneers 닫기 버튼
        Positioned(
          left: 16.w,
          bottom: DeviceHeight().fullbackBtn(16.w),
          child: const FullPageBack(), //available.png
        ),
        // 프로필 리스트 로딩 중일 경우
        if (profileList is ProfileListLoading) const LoadingWidget(),
        // if (!dataInit) const LoadingWidget()
      ],
    );
  }
}
