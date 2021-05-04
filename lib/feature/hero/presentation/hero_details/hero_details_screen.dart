import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/presentation/hero_details/widgets/hero_section_title_widget.dart';
import 'package:super_hero_app/feature/hero/presentation/hero_details/widgets/status_widget.dart';

import 'widgets/description_widget.dart';

class HeroDetailsScreen extends StatelessWidget {
  const HeroDetailsScreen({
    required this.hero,
  });

  final HeroEntity hero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Hero(
            tag: hero.images!.lg!,
            child: CachedNetworkImage(
              imageUrl: hero.images!.lg!,
              fit: BoxFit.fitHeight,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
              height: 710.h,
              width: 360.w,
            ),
          ),
        ),
        Positioned.fill(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 45.h),
              children: [
                CachedNetworkImage(
                  imageUrl: hero.images!.lg!,
                  height: 404.h,
                  width: 262.w,
                ),
                HeroSectionTitleWidget(
                  title: hero.name!,
                  color: Colors.blue,
                  fontSize: 72.sp,
                ),
                _biography(),
                _appearence(),
                _stats(),
              ],
            ),
          ),
        ),
        Positioned(
          top: 35.h,
          left: 25.w,
          child: Opacity(
            opacity: 0.8,
            child: InkWell(
              onTap: () => Modular.to.pop(),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18.w,
                  ),
                  Text(
                    'Back to Heroes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _appearence() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15.h),
            child: HeroSectionTitleWidget(
              title: 'Appearence',
              color: Colors.lightBlue,
              fontSize: 18.sp,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DescriptionWidget(
                label: 'Gender',
                value: hero.appearance!.gender == null ||
                        hero.appearance!.gender! == '-'
                    ? 'Unspecified'
                    : hero.appearance!.gender!,
                padding: EdgeInsets.zero,
              ),
              DescriptionWidget(
                label: 'Race',
                value: hero.appearance?.race ?? 'Unspecified',
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          Container(
            height: 15.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DescriptionWidget(
                label: 'Height',
                value: hero.appearance!.height![1],
                padding: EdgeInsets.zero,
              ),
              DescriptionWidget(
                label: 'Weight',
                value: hero.appearance!.weight![1],
                padding: EdgeInsets.zero,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _stats() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15.h),
            child: HeroSectionTitleWidget(
              title: 'Status',
              color: Colors.lightBlue,
              fontSize: 18.sp,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatusWidget(
                label: 'Intelligence',
                value: hero.powerstats?.intelligence.toString() ?? '?',
              ),
              StatusWidget(
                label: 'Strength',
                value: hero.powerstats?.strength.toString() ?? '?',
              ),
              StatusWidget(
                label: 'Speed',
                value: hero.powerstats?.speed.toString() ?? '?',
              ),
            ],
          ),
          Container(
            height: 15.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatusWidget(
                label: 'Durability',
                value: hero.powerstats?.durability.toString() ?? '?',
              ),
              StatusWidget(
                label: 'Power',
                value: hero.powerstats?.power.toString() ?? '?',
              ),
              StatusWidget(
                label: 'Combat',
                value: hero.powerstats?.combat.toString() ?? '?',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _biography() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15.h),
            child: HeroSectionTitleWidget(
              title: 'Biography',
              color: Colors.lightBlue,
              fontSize: 18.sp,
            ),
          ),
          DescriptionWidget(
            label: 'Name',
            value: hero.biography!.fullName!,
            width: 300.w,
          ),
          DescriptionWidget(
            label: 'Alter egos',
            value: hero.biography!.alterEgos!,
            width: 300.w,
          ),
          DescriptionWidget(
            label: 'Alias',
            value: hero.biography!.aliases?.join(',') ?? 'No alias found.',
            width: 300.w,
          ),
          DescriptionWidget(
            label: 'Place of Birth',
            value: hero.biography!.placeOfBirth!,
            width: 300.w,
          ),
          DescriptionWidget(
            label: 'First Appearance',
            value: hero.biography!.firstAppearance!,
            width: 300.w,
          ),
        ],
      ),
    );
  }
}
