import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 710),
      builder: () {
        return MaterialApp(
          theme: ThemeData(
            accentColor: Colors.black87,
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
              overline: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: 16.sp,
              ),
            ),
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
        ).modular();
      },
    );
  }
}
