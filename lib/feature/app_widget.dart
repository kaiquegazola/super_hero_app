import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 710),
      builder: (child) {
        Modular.setInitialRoute('/dashboard');
        return MaterialApp.router(
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
          theme: ThemeData(
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
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.black87,
            ),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
