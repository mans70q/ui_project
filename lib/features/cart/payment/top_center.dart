import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';

class TopCenter extends StatelessWidget {
  const TopCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
      height: 241.h,
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffFFF4E9),
        border: Border.all(
            color: const Color(0xff6D3805).withAlpha(11), width: 2.w),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 125.0.w,
                  height: 80.0.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "goteborg arkaden",
                        style: MyStyles.font15BrownW700,
                      ),
                      Text("1.4 MI", style: MyStyles.font16BrownW400),
                    ],
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_right_rounded,
                  color: MyColors.secondaryColor, size: 40.sp),
            ],
          ),
          Divider(
            color: const Color(0xff6D3805).withAlpha(11),
            height: 20.h,
            thickness: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 125.0.w,
                  height: 80.0.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kungsbacka kungsmassan",
                        style: MyStyles.font15BrownW700,
                      ),
                      Text("17 MI", style: MyStyles.font16BrownW400),
                    ],
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_right_rounded,
                  color: MyColors.secondaryColor, size: 40.sp),
            ],
          ),
        ],
      ),
    );
  }
}
