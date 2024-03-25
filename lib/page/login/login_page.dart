import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/login/login_page_controller.dart';

/// 登陆页面
class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginPageController());
    return Scaffold(
      //AppBar 高度0不会盖住内容
      appBar: AppBar(toolbarHeight: 0),
      //扩展到AppBar下面页面不会滚动
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        //physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            100.verticalSpace,
            Text(
              "登录账号",
              //"Login in",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            10.verticalSpace,
            Text(
              "登录账号继续使用应用程序",
              //"Sign in to continue to miles app",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            70.verticalSpace,
            const TextField(
              decoration: InputDecoration(hintText: "账号"),
            ),
            40.verticalSpace,
            const TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "密码"),
            ),
            20.verticalSpace,
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "忘记密码",
                //"Forgot Password?",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            50.verticalSpace,
            FilledButton(
              onPressed: controller.login,
              child: const Text("登  录"),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "没有账号？",
                  //"Don't have account?",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "立即注册",
                  //"Sign up",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            100.verticalSpace,
            Row(
              children: [
                30.horizontalSpace,
                Expanded(
                  child: DottedLine(
                    dashColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                10.horizontalSpace,
                const Text("Or"),
                10.horizontalSpace,
                Expanded(
                  child: DottedLine(
                    dashColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                30.horizontalSpace,
              ],
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOtherLoginIcon(
                  image: "assets/images/Facebook.webp",
                ),
                30.horizontalSpace,
                buildOtherLoginIcon(
                  image: "assets/images/GitHub.webp",
                ),
                30.horizontalSpace,
                buildOtherLoginIcon(
                  image: "assets/images/wechat.webp",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 其他登录图标
  Widget buildOtherLoginIcon({
    required String image,
  }) {
    return Image.asset(
      image,
      width: 36.w,
      height: 36.w,
    );
  }
}
