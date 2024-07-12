import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/core/widgets/custom_text_button.dart';
import 'package:ui/features/cart/payment/payment_page.dart';
import 'package:ui/features/cart/widgets/item_list_tile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: MyColors.primaryColor,
          ),
        ),
        title: Text(
          "Cart",
          style: MyStyles.font20OrangeW700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          SizedBox(height: 20.h),
          SizedBox(
            height: 590.h,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 4,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 0.5,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return const ItemListTile();
              },
            ),
          ),
          CustomTextButton(
            text: "Checkout",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ));
            },
          ),
        ]),
      ),
    );
  }
}
