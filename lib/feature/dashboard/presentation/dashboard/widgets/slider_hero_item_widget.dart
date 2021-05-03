import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';

class SliderHeroItemWidget extends StatelessWidget {
  const SliderHeroItemWidget({
    required this.hero,
    Key? key,
  }) : super(key: key);

  final HeroEntity hero;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
        child: Stack(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: hero.images!.lg!,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.w),
                ),
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(5.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.open_in_new_outlined,
                        color: Colors.white70,
                        size: 12.w,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.w),
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  hero.name!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
