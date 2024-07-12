import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ui/core/themes/colors.dart';
import 'package:ui/core/themes/styles.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: const Color(0xffA42B32),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Image.asset(
                'assets/images/apple.png',
                height: 100,
                width: 100,
              ),
              title: Text(
                'Red Apple',
                style: MyStyles.font15BrownW700,
              ),
              subtitle: Row(
                children: [
                  const Icon(Icons.shopping_cart_outlined,
                      color: MyColors.primaryColor),
                  Text("Add to cart", style: MyStyles.font14OrangeW400),
                ],
              ),
              trailing: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: '\$ 4.99', style: MyStyles.font15BrownW700),
                    TextSpan(
                      text: " kg",
                      style: MyStyles.font16BrownW400,
                    ),
                  ],
                ),
              )),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1,
        );
      },
      itemCount: 3,
    );
  }
}
