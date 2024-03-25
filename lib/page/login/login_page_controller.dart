import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/login/login_verify_page.dart';

class LoginPageController extends GetxController {
  /// 登录方法
  void login() async {
    SmartDialog.showLoading();
    await Future.delayed(Durations.extralong4);
    SmartDialog.dismiss();
    await Future.delayed(Durations.short1);
    Get.to(() => const LoginVerifyPage());
  }
}
