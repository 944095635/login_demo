import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:utmost_shop/page/frame/frame_page_controller.dart';
import 'package:utmost_shop/page/home/home_page.dart';
import 'package:utmost_shop/widget/common.dart';

class FramePage extends GetView<FramePageController> {
  const FramePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FramePageController());
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Obx(
        () => IndexedStack(
          index: controller.selectPageIndex.value,
          children: const [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ),
      ),
      bottomNavigationBar: getFilterWidget(
        child: Obx(
          () => SizedBox(
            height: 70,
            child: BottomNavigationBar(
              onTap: (index) {
                controller.selectPageIndex.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: glassColor,
              currentIndex: controller.selectPageIndex.value,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 11.sp,
              unselectedFontSize: 11.sp,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/images/home.webp",
                    width: 26.w,
                  ),
                  icon: Image.asset(
                    "assets/images/home.webp",
                    color: const Color(0xFF9E9E9E),
                    width: 26.w,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/images/discover.webp",
                    width: 26.w,
                  ),
                  icon: Image.asset(
                    "assets/images/discover.webp",
                    width: 26.w,
                    color: const Color(0xFF9E9E9E),
                  ),
                  label: "Find",
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/images/shopping-cart.webp",
                    width: 26.w,
                  ),
                  icon: Image.asset(
                    "assets/images/shopping-cart.webp",
                    width: 26.w,
                    color: const Color(0xFF9E9E9E),
                  ),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/images/my.webp",
                    width: 26.w,
                  ),
                  icon: Image.asset(
                    "assets/images/my.webp",
                    width: 26.w,
                    color: const Color(0xFF9E9E9E),
                  ),
                  label: "My",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
