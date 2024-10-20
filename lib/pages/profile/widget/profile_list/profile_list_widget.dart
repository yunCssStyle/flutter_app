import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';

import '../profile_img_widget.dart';
import 'profile_list_btns_widget.dart';

class ProfileListWidget extends ConsumerStatefulWidget {
  final int page;
  final int listCount;
  final bool pageLoading;
  final bool lastCall;
  const ProfileListWidget({
    super.key,
    required this.listCount,
    required this.page,
    required this.lastCall,
    required this.pageLoading,
  });

  @override
  ConsumerState<ProfileListWidget> createState() => _ProfileListWidgetState();
}

class _ProfileListWidgetState extends ConsumerState<ProfileListWidget> {
  late int _selectedId = 0; // 선택된 아이디
  late int _selectedIndex = 0; // 선택된 인덱스
  List btnsList = []; // 버튼 위치 저장 배열
  List greenKey = []; // 스크롤 위치 저장 배열
  bool isModal = false;
  bool fetchedData = false; // 상태 변수
  bool dataInit = false; // 상태 변수
  int page = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isProfileList(); // async 함수 실행
    });
  }

  // 스클롤 위치와 버튼 위치를 프로필 리스트에 맞쳐서 생성 및 저장
  Future<void> isProfileList() async {
    try {
      // await Future.delayed(const Duration(seconds: 2));
      // ref.read(profileListProvider.notifier).getInitData(
      //       page: widget.page,
      //       size: !widget.lastCall ? profilesPageSize : widget.listCount,
      //     );
      // final profileServices = ref.read(profileServicesProvider); // 프로필 api
      // await profileServices.getProfileList(
      //   'endstat',
      //   widget.page,
      //   !widget.lastCall ? profilesPageSize : widget.listCount,
      // ); // 프로필 리스트 정보 조회 api 호출
      final profileList = ref.watch(profileListProvider); // 프로필 리스트 정보 조회
      if (profileList is ProfileListModel) {
        // 프로필 리스트 정보가 있을 경우
        for (int i = 0; i < profileList.pioneers.length; i++) {
          // 프로필 리스트 정보만큼 반복
          btnsList.add(SuperTooltipController()); // 버튼 위치 저장
          greenKey.add(GlobalKey()); // 스크롤 위치 저장
        }
        setState(() {
          _selectedIndex = profileList.pioneers.length + 1; // 선택된 인덱스 저장
          fetchedData = true; // 상태 변수 true
          dataInit = true; // 상태 변수 true
        });
      }
    } catch (e) {
      // print(e);
    }
  }

  @override
  void dispose() {
    fetchedData = false; // 상태 변수 false
    btnsList = []; // 버튼 위치 초기화
    greenKey = []; // 스크롤 위치 초기화
    super.dispose();
  }

  // 프로필 클릭시
  void profileClick(index, profileIndex, length) {
    // Scrollable.ensureVisible(
    //   // 스크롤 이동
    //   greenKey[index].currentContext!, // 스크롤 위치로 이동
    //   duration: const Duration(milliseconds: 300), // 이동 시간
    // );
    if (_selectedIndex != length + 1) {
      // 선택된 인덱스가 있을 경우
      btnsList[_selectedIndex].hideTooltip(); // 이전에 선택된 프로필 버튼 닫기
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
      // ref
      //     .read(selectedProvider.notifier)
      //     .setSelected(index);
    }
  }

  void btnsClose(index, length) {
    //프로필 버튼 영역 닫기
    btnsList[index].hideTooltip(); // 버튼 닫기
    setState(() {
      _selectedId = 0; // 선택된 아이디 초기화
      _selectedIndex = length + 1; // 선택된 인덱스 초기화
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileList = ref.watch(profileListProvider); // 프로필 리스트 정보 조회
    return CustomScrollView(
      physics:
          (profileList is ProfileListModel && profileList.pioneers.isEmpty) ||
                  profileList is ProfileListError // 프로필 리스트가 없을 경우 스크롤 불가
              ? const NeverScrollableScrollPhysics()
              : null,
      slivers: <Widget>[
        const DefaultAppbar(
          // 상단 앱바
          title: 'Pioneers (NFT)',
          topBg: 'assets/images/profile/profilelist_top_bg.png',
        ),
        if (profileList is ProfileListModel)
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  bottom: 16.w,
                  top: 22.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'NFTs: ${profileList.totalCount.toString()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Chaloops',
                        fontSize: 16.w,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        // 프로필 리스트 정보가 있을 경우와 스크롤 위치와 버튼 위치가 저장되었을 경우
        if (profileList is ProfileListModel &&
            profileList.pioneers.isNotEmpty &&
            fetchedData &&
            !widget.pageLoading)
          // SliverFillRemaining(
          //   hasScrollBody: true,
          //   fillOverscroll: true,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       const Text('aaaa'),
          //       Column(
          //         children: subLists.asMap().entries.map((e) {
          //           final subList = e.value;
          //           return Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 16.w),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: subList.map((pioneer) {
          //                 final profileLists =
          //                     profileList.pioneers; // 프로필 리스트 정보
          //                 final length =
          //                     profileList.pioneers.length; // 프로필 리스트 정보 길이
          //                 final index = pioneers.indexOf(pioneer);
          //                 final profileIndex =
          //                     profileList.pioneers[index]; // 프로필 리스트 정보 중 하나
          //                 return SuperTooltip(
          //                   verticalOffset: 60.w,
          //                   showBarrier: false,
          //                   controller: btnsList[index],
          //                   onShow: () async {
          //                     profileClick(
          //                         index, profileIndex, profileLists.length);
          //                   },
          //                   height: 60.w,
          //                   isTooltip: false,
          //                   content: Transform.translate(
          //                     offset: Offset(
          //                         index % 3 == 0
          //                             ? -3.w
          //                             : index % 3 == 2
          //                                 ? 3.w
          //                                 : 0,
          //                         0),
          //                     child: SizedBox(
          //                       height: 100.w,
          //                       width: 108.w,
          //                       child: ProfileListBtnsWidget(
          //                         callback: (index, length) =>
          //                             btnsClose(index, length),
          //                         index: index,
          //                         length: length,
          //                         profileIndex: profileIndex,
          //                       ),
          //                     ),
          //                   ),
          //                   child: Padding(
          //                     padding: EdgeInsets.symmetric(vertical: 4.w),
          //                     child: Container(
          //                       // 선택되지 않은 프로필의 이미지 딤처리
          //                       width: 108.w,
          //                       height: 108.w,
          //                       color: Colors.black,
          //                       key: greenKey[index],
          //                       child: Opacity(
          //                         opacity: _selectedId == 0
          //                             ? 1
          //                             : _selectedId == profileIndex.id
          //                                 ? 1
          //                                 : 0.4,
          //                         child: ProfileImgWidget(
          //                           readed: profileIndex.readed,
          //                           type: profileIndex.type,
          //                           url: profileIndex.url,
          //                           equipped: profileIndex.equipped,
          //                           color: _selectedId == profileIndex.id
          //                               ? AppColor.lightYellow
          //                               : Colors.black,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 );
          //                 // return Text(pioneer.id.toString());
          //               }).toList(),
          //             ),
          //           );
          //         }).toList(),
          //       ),
          //       const Text('aaaa'),
          //     ],
          //   ),
          // ),
          SliverPadding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 186.w,
              top: 0,
            ),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3개씩 출력
                mainAxisSpacing: 9.5.w, // 세로 간격
                crossAxisSpacing: 9.5.w, // 가로 간격
                childAspectRatio: 1.0, // 가로 세로 비율
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final profileLists = profileList.pioneers; // 프로필 리스트 정보
                  final length = profileList.pioneers.length; // 프로필 리스트 정보 길이
                  final profileIndex =
                      profileList.pioneers[index]; // 프로필 리스트 정보 중 하나
                  return GridTile(
                    child: Center(
                      child: SuperTooltip(
                        verticalOffset: 60.w,
                        showBarrier: false,
                        controller: btnsList[index],
                        onShow: () async {
                          profileClick(
                              index, profileIndex, profileLists.length);
                        },
                        isTooltip: false,
                        barrierColor: Colors.black.withOpacity(0),
                        content: SizedBox(
                          height: 108.w,
                          width: 108.w,
                          child: ProfileListBtnsWidget(
                            callback: (index, length) =>
                                btnsClose(index, length),
                            index: index,
                            length: length,
                            profileIndex: profileIndex,
                          ),
                        ),
                        child: Container(
                          // 선택되지 않은 프로필의 이미지 딤처리
                          width: 116.w,
                          height: 116.w,
                          color: Colors.black,
                          key: greenKey[index],
                          child: Opacity(
                            opacity: _selectedId == 0
                                ? 1
                                : _selectedId == profileIndex.id
                                    ? 1
                                    : 0.4,
                            child: ProfileImgWidget(
                              readed: profileIndex.readed,
                              type: profileIndex.type,
                              url: profileIndex.url,
                              equipped: profileIndex.equipped,
                              color: _selectedId == profileIndex.id
                                  ? AppColor.lightYellow
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: profileList.pioneers.length,
              ),
            ),
          ),
        if (widget.pageLoading) // 프로필 리스트 정보가 없을 경우
          const SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: LoadingWidget(isPositioned: false),
          ),
        if ((profileList is ProfileListModel && profileList.pioneers.isEmpty) ||
            profileList is ProfileListError) // 프로필 리스트 정보가 없을 경우
          SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You don\'t have any NFTs.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Chaloops',
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 36.w,
                ),
                Image(
                  width: 152.w,
                  fit: BoxFit.fitWidth,
                  image:
                      const AssetImage('assets/images/profile/nft_nolist.png'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
