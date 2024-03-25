import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/frame/frame_page.dart';

class LoginVerifyPageController extends GetxController {
  var agree = false.obs;

  /// 登录方法
  void submit() async {
    SmartDialog.showLoading();
    await Future.delayed(Durations.extralong4);
    SmartDialog.dismiss();
    await Future.delayed(Durations.short1);
    Get.offAll(() => const FramePage());
  }
}
