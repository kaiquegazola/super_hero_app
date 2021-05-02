import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/controllers/dashboard_controller.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/widgets/loading_widget.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/widgets/slider_hero_item_widget.dart';

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
                  image: DecorationImage(
                    image: NetworkImage(controller.currentHero!.image!),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: 50.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Text('Filters'),
                            label: Icon(
                              Icons.filter_list,
                            ),
                          )
                        ],
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          height: 340.h,
                          onPageChanged: (index, reason) {
                            controller.currentIndex = index;
                          },
                        ),
                        items: _sliderItens(),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('SHUFFLE'),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              width: 2.w,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              )
            : LoadingWidget(),
      ),
    );
  }

  List<Widget> _sliderItens() {
    return controller.heroes!
        .map(
          (hero) => SliderHeroItemWidget(
            hero: hero,
          ),
        )
        .toList();
  }
}
