import 'package:flutter/material.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/features/cart/payment/payment_body.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: MyStyles.font20OrangeW700,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: MyColors.primaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const PaymentBody(),
    );
  }
}
