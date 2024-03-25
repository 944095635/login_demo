import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          40.verticalSpace,
          Text(
            "Hi,DM",
            //"Login in",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 30.sp),
          ),
          const Text(
            "what's your mood today?",
          ),
          20.verticalSpace,
          Text(
            "Top Categories",
            //"Login in",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          20.verticalSpace,
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFF6F6F6),
                ),
                child: Image.asset(
                  "assets/images/s1.png",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFF6F6F6),
                ),
                child: Image.asset(
                  "assets/images/s2.png",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFF6F6F6),
                ),
                child: Image.asset(
                  "assets/images/s1.png",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFF6F6F6),
                ),
                child: Image.asset(
                  "assets/images/s2.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
