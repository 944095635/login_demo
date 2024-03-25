import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/login/login_verify_page_controller.dart';

class LoginVerifyPage extends GetView<LoginVerifyPageController> {
  const LoginVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginVerifyPageController());
    return Scaffold(
      //AppBar 高度0不会盖住内容
      appBar: AppBar(toolbarHeight: 0),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              children: [
                160.verticalSpace,
                Image.asset(
                  "assets/images/Wavy_Check.webp",
                  fit: BoxFit.fill,
                  color: Theme.of(context).colorScheme.primary,
                  width: 80.w,
                  height: 80.w,
                ),
                20.verticalSpace,
                Center(
                  child: Text(
                    "Dream.Machine",
                    //"Login in",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 30.sp),
                  ),
                ),
                10.verticalSpace,
                const Center(
                  child: Text(
                    "Authentication Service",
                    //"Login in",
                  ),
                ),
                130.verticalSpace,
                GestureDetector(
                  onTap: () {
                    controller.agree.value = !controller.agree.value;
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.agree.value,
                          onChanged: (e) {
                            controller.agree.value = e==true;
                          },
                        ),
                      ),
                      Text(
                        "创建账号表示你同意我们的用户协议",
                        //"Sign in to continue to miles app",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                FilledButton(
                  onPressed: controller.submit,
                  child: const Text("One-click Login"),
                ),
                20.verticalSpace,
                FilledButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFFF9F9F9),
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Color(0xFF9E9E9F),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Other ways"),
                ),
                120.verticalSpace,
              ],
            ),
          ),
          Positioned(
            right: 20.w,
            top: 20.h,
            child: IconButton(
              icon: const Icon(
                Icons.close_sharp,
                size: 30,
              ),
              onPressed: Get.back,
            ),
          ),
        ],
      ),
    );
  }
}
