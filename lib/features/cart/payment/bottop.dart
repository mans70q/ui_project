import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/strings.dart';
import 'package:ui/core/themes/styles.dart';

class bottop extends StatelessWidget {
  const bottop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
      height: 203.h,
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffFFF4E9),
        border: Border.all(
            color: const Color(0xff6D3805).withAlpha(11), width: 2.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "  Payment Method",
            style: MyStyles.font15BrownW700,
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 250.0.w,
                    height: 50.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(MyStrings.appleLogo),
                        Text(
                          "  Apple Pay",
                          style: MyStyles.font15BrownW700,
                        ),
                      ],
                    )),
              ),
              Icon(Icons.check,
                  color: MyColors.iconColor, size: 30.sp),
            ],
          ),
          Divider(
            color: const Color(0xff6D3805).withAlpha(11),
            height: 20.h,
            thickness: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.monetization_on_rounded,
                  color: MyColors.iconColor,
                  size: 40.sp,
                ),
                Text(
                  "  Cash on delivery",
                  style: MyStyles.font15BrownW700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
