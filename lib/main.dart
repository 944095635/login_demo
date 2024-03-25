import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// 手机设置多分辨率支持
    if (Platform.isAndroid || Platform.isIOS) {
      ScreenUtil.init(
        context,
        designSize: const Size(375, 812),
      );
    }
    return GetMaterialApp(
      title: 'Ut Shop',
      defaultTransition: Transition.rightToLeft,
      theme: ThemeData(
        fontFamily: "ITCAvantGardeStd",
        //splashFactory: NoSplash.splashFactory,
        //splashColor: Colors.transparent,
        //highlightColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleSpacing: 0,
          scrolledUnderElevation: 0,
          shadowColor: const Color(0x44EEEEEE),
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark, //状态栏黑色图标
            systemNavigationBarColor: Colors.white,
          ),
          titleTextStyle: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF333333),
          ),

          /// 页面中的提示文字
          bodyMedium: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xFF888888),
          ),
          bodySmall: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w300,
            color: const Color(0xFF888888),
          ),

          /// 橙色提示文本
          displayMedium: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xFFFE8051),
          ),
          displaySmall: TextStyle(
            fontSize: 13.sp,
            color: const Color(0xFFFE8051),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: const Color(0xFF323335),
          secondary: const Color(0xFF888888),
          tertiary: const Color(0xFFFE8051),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDEDEDE),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF888888),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(fontSize: 16.sp),
            ),
            minimumSize: MaterialStatePropertyAll(
              Size.fromHeight(48.h),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      builder: FlutterSmartDialog.init(
          //default toast widget
          //toastBuilder: (String msg) => CustomToastWidget(msg: msg),
          //default loading widget
          //loadingBuilder: (String msg) => Container(color: Colors.amber,),
          //default notify widget
          //notifyStyle: FlutterSmartNotifyStyle(
          //  successBuilder: (String msg) => CustomSuccessWidget(msg: msg),
          //  failureBuilder: (String msg) => CustomFailureWidget(msg: msg),
          //  warningBuilder: (String msg) => CustomWarningWidget(msg: msg),
          //  alertBuilder: (String msg) => CustomAlertWidget(msg: msg),
          //  errorBuilder: (String msg) => CustomErrorWidget(msg: msg),
          //),
          ),
    );
  }
}
