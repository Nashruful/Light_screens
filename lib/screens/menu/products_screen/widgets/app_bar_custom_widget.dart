import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class AppBarCustomWidget extends StatelessWidget {
  const AppBarCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: CustomText(
          widgetData: CustomTextData(
              msg: "Menu", size: context.getWidth(size: 10), color: black)),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: black,
              size: context.getWidth(size: 12),
            ))
      ],
    );
  }
}
