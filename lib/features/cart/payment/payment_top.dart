
import 'package:flutter/material.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';

class Top extends StatelessWidget {
  const Top({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "In-Store Pick Up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: MyColors.secondaryColor),
              ),
              SizedBox(
                width: 280,
                child: Text(
                  "Some Stores May Be Temporarily Unavalable.",
                  style: MyStyles.font16BrownW400,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text("FREE", style: MyStyles.font15BrownW700),
              const SizedBox(
                height: 50,
                child: Icon(Icons.keyboard_arrow_down_rounded,
                    color: MyColors.secondaryColor, size: 30),
              )
            ],
          )
        ],
      ),
    );
  }
}
