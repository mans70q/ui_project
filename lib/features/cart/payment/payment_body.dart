import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/core/widgets/custom_text_button.dart';
import 'package:ui/core/widgets/custom_text_form_field.dart';
import 'package:ui/features/cart/payment/payment_top.dart';
import 'bottop.dart';
import 'top_center.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 650.h,
            child: ListView(shrinkWrap: true, children: [
              const Top(),
              const CustomTextFormField(
                hintText: 'Search For Town, Street, Zip Code...',
                prefixIcon: Icon(Icons.search),
              ),
              const TopCenter(),
              const MedCenter(),
              const bottop(),
              Container(
                margin: EdgeInsets.only(bottom: 16.h),
                padding: const EdgeInsets.all(16),
                height: 209.h,
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
                      "Order Sammery",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16.sp,
                          color: MyColors.secondaryColor),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal",
                                style: MyStyles.font15BrownW700,
                              ),
                              Text(
                                "\$137.00",
                                style: MyStyles.font15BrownW700,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tax",
                                style: MyStyles.font15BrownW700,
                              ),
                              Text(
                                "\$4.50",
                                style: MyStyles.font15BrownW700,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "In-Store Pick Up",
                                style: MyStyles.font15BrownW700,
                              ),
                              Text(
                                "\$00.00",
                                style: MyStyles.font15BrownW700,
                              ),
                            ],
                          ),
                        ]),
                    Divider(
                      color: const Color(0xff6D3805).withAlpha(11),
                      height: 20.h,
                      thickness: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total:",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp,
                              color: MyColors.secondaryColor),
                        ),
                        Text(
                          "\$141.50",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp,
                              color: MyColors.secondaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
          const CustomTextButton(text: "CheckOut\$141.50"),
        ],
      ),
    );
  }
}

class MedCenter extends StatelessWidget {
  const MedCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      height: 100.h,
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
                  width: 120.0.w,
                  height: 80.0.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_basket_sharp,
                        size: 30.sp,
                        color: MyColors.secondaryColor,
                      ),
                      Text(
                        "see Itemes",
                        style: MyStyles.font15BrownW700,
                      ),
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
