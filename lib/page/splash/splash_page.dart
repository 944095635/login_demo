import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Dream.Machine"),
      ),
    );
  }

  void init() async {
    //跳转到不同的页面
    await Future.delayed(Durations.extralong2);
    Get.offAll(() => const LoginPage(),transition: Transition.fadeIn);
  }
}
