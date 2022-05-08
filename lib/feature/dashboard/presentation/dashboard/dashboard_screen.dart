import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/controllers/dashboard_controller.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/widgets/loading_widget.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/widgets/slider_hero_item_widget.dart';
import 'package:super_hero_app/feature/dashboard/presentation/filters/filters_screen.dart';

import 'widgets/shuffle_hero_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    required this.controller,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => controller.heroes != null
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(controller.currentHero!.images!.lg!),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _filterButton(context),
                        ],
                      ),
                      _caroussel(),
                      ShuffleHeroWidget(
                        onTap: () async => await controller.shuffle(),
                      ),
                    ],
                  ),
                ),
              )
            : LoadingWidget(),
      ),
    );
  }

  Widget _filterButton(BuildContext context) => OutlinedButton.icon(
        onPressed: () {
          showCupertinoModalBottomSheet<void>(
            context: context,
            builder: (ctx) => FiltersScreen(
              controller: controller,
            ),
            expand: false,
          );
        },
        icon: Text('Filters'),
        label: Icon(
          Icons.filter_list,
        ),
      );

  Widget _caroussel() => CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          height: 340.h,
          onPageChanged: (index, reason) {
            controller.currentIndex = index;
          },
        ),
        carouselController: controller.carouselController,
        items: _sliderItens(),
      );

  List<Widget> _sliderItens() {
    return controller.heroes!
        .map(
          (hero) => InkWell(
            onTap: () => controller.goToDetails(hero),
            child: SliderHeroItemWidget(
              hero: hero,
            ),
          ),
        )
        .toList();
  }
}
