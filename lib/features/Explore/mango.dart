import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/strings.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/core/widgets/custom_counter.dart';
import 'package:ui/core/widgets/custom_text_button.dart';

class MangoScreen extends StatelessWidget {
  const MangoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Center(
              child: Image.asset(
                MyStrings.pngeggImage,
                height: 243.h,
                width: 208.w,
              ),
            ),
            SizedBox(height: 20.h),
            Text("Orginal Mango ", style: MyStyles.font22BrownW400),
            Text("\$3.00 /st", style: MyStyles.font20BrownW400),
            SizedBox(height: 20.h),
            Text(
                "Golden Ripe Alphonsa mangoes delivered to your house in the most hygenic way ever... Best for eating plain but can also be made into shakes and cakes. ",
                style: MyStyles.font16BrownW400),
            SizedBox(height: 50.h),
            SizedBox(
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 3, child: CustomCounter()),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.favorite_border,
                        color: MyColors.primaryColor, size: 30.h),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.h),
            CustomTextButton(
              text: "Add To Cart",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
