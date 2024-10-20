import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/services/inventory_service.dart';

class InventoryNotEmpty extends ConsumerStatefulWidget {
  const InventoryNotEmpty({super.key});

  @override
  ConsumerState<InventoryNotEmpty> createState() => _InventoryNotEmptyState();
}

class _InventoryNotEmptyState extends ConsumerState<InventoryNotEmpty> {
  late int _selectedId = 0; // 선택된 아이디
  late int _selectedIndex = 0; // 선택된 인덱스
  List btnsList = []; // 버튼 위치 저장 배열
  List greenKey = []; // 스크롤 위치 저장 배열
  bool isModal = false;
  bool fetchedData = false; // 상태 변수
  bool dataInit = false; // 상태 변수

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isProfileList(); // async 함수 실행
    });
  }

  // 스클롤 위치와 버튼 위치를 인베토리 리스트에 맞쳐서 생성 및 저장
  Future<void> isProfileList() async {
    try {
      // await Future.delayed(const Duration(seconds: 2));
      ref.read(inventoryProvider.notifier).setInventoryData();
      final inventoryServices = ref.read(inventoryServicesProvider); // 인베토리 api
      await inventoryServices.getInventory(); // 인베토리 리스트 정보 조회 api 호출
      final inventory = ref.watch(inventoryProvider); // 프로필 리스트 정보 조회
      if (inventory is InventoryModel && inventory.data != null) {
        // 인베토리 리스트 정보가 있을 경우
        for (int i = 0; i < inventory.data!.mines.length; i++) {
          // 인베토리 리스트 정보만큼 반복
          btnsList.add(SuperTooltipController()); // 버튼 위치 저장
          greenKey.add(GlobalKey()); // 스크롤 위치 저장
        }
        setState(() {
          _selectedIndex = inventory.data!.mines.length + 1; // 선택된 인덱스 저장
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

  // 인베토리 클릭시
  void profileClick(index, profileIndex, length) {
    Scrollable.ensureVisible(
      // 스크롤 이동
      greenKey[index].currentContext!, // 스크롤 위치로 이동
      duration: const Duration(milliseconds: 300), // 이동 시간
    );
    if (_selectedIndex != length + 1) {
      // 선택된 인덱스가 있을 경우
      btnsList[_selectedIndex].hideTooltip(); // 이전에 선택된 인베토리 버튼 닫기
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
    setState(() {
      _selectedId = 0; // 선택된 아이디 초기화
      _selectedIndex = length + 1; // 선택된 인덱스 초기화
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.w,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Implementing Mining Right settings.\nStatus cannot be changed until ',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  height: 1.2,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '23:00',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontSize: 14.w,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/home/inventory/icn_mzp.png',
              width: 16.w,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Current MP',
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14.w,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const Mzp(
                mzp: 23331.17,
                mzpSize: 14,
                mzpSmallSize: 12,
                mzpColor: Colors.white,
                mzpSmallColor: AppColor.lightGrey,
                mzpfontFamily: 'ProximaSoft',
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              'assets/images/home/inventory/icn_mzp1.png',
              width: 16.w,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Active mines',
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14.w,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const Text(
                '4/6',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: AppColor.lightYellow,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 26.w,
        ),
      ],
    );
  }
}
