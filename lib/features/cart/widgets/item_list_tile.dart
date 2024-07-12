import 'package:flutter/material.dart';
import 'package:ui/core/themes/strings.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/core/widgets/custom_counter.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(MyStrings.appleImage),
      title: Text(
        "Red Apple",
        style: MyStyles.font15BrownW700,
      ),
      subtitle: const SizedBox(width: 98, height: 40, child: CustomCounter()),
      trailing: Text(
        "\$4.99 kg",
        style: MyStyles.font15BrownW700,
      ),
    );
  }
}
