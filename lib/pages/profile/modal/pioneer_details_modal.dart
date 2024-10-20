import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';

import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';
import 'package:minewarz_app/pages/profile/provider/profile_provider.dart';
import 'package:minewarz_app/pages/profile/widget/profile_list/stat_detail_card.dart';

class PioneerDetailsModal extends ConsumerStatefulWidget {
  final int id;
  const PioneerDetailsModal({super.key, required this.id});

  @override
  ConsumerState<PioneerDetailsModal> createState() =>
      _PioneerDetailsModalState();
}

class _PioneerDetailsModalState extends ConsumerState<PioneerDetailsModal> {
  late PioneerModel pioneerDetails;
  ProfileStatModel _selectedProfileStat = const ProfileStatModel(
      luck: 0, silverTongue: 0, stamina: 0, intuition: 0);
  bool dataInit = false;

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);
    final profileList = ref.watch(profileListProvider);
    if (profileList is ProfileListModel) {
      setState(() {
        pioneerDetails = profileList.pioneers
            .where((element) => element.id == widget.id)
            .toList()[0];
        dataInit = true;
      });
    }
    if (profile is ProfileModel) {
      final isProfile = profile.pioneer;
      _selectedProfileStat = ProfileStatModel(
        silverTongue:
            isProfile.stat!.silverTongue + isProfile.statBonus!.silverTongue,
        stamina: isProfile.stat!.stamina + isProfile.statBonus!.stamina,
        luck: isProfile.stat!.luck + isProfile.statBonus!.luck,
        intuition: isProfile.stat!.intuition + isProfile.statBonus!.intuition,
      );
      setState(() {});
    }
    return SizedBox(
      height: 428.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (dataInit)
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 272.w,
                  width: 272.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/profile/nft_back_bg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 8.w,
                  child: Center(
                    child: NftImg(
                      type: pioneerDetails.type,
                      url: pioneerDetails.url,
                      size: 256,
                      movePlay: true,
                    ),
                  ),
                ),
                Container(
                  height: 272.w,
                  width: 272.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile/nft_back.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15.w,
                  left: 0,
                  right: 0,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: 7.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 7.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 3.w,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                pioneerDetails.name,
                                style: TextStyle(
                                  fontFamily: 'Chaloops',
                                  fontSize: 13.w,
                                  height: 1.2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '#${pioneerDetails.tokenId.toString()}',
                                style: TextStyle(
                                  fontFamily: 'Chaloops',
                                  height: 1.2,
                                  fontSize: 22.w,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image(
                        width: 19.w,
                        fit: BoxFit.fitWidth,
                        image: const AssetImage(
                            'assets/images/profile/pioneer_details_name.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          SizedBox(
            height: 57.w,
          ),
          if (dataInit)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: pioneerDetails.stat != null
                  ? pioneerDetails.stat!.toJson().entries.map((e) {
                      return StatDetailCard(
                        stat: e.key,
                        value: e.value,
                        statBonus: e.key,
                        valueBonus: pioneerDetails.statBonus!.toJson()[e.key],
                        selectedStat: _selectedProfileStat.toJson()[e.key],
                      );
                    }).toList()
                  : [],
            )
        ],
      ),
    );
  }
}
