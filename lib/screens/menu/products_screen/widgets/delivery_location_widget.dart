import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class DeliveryLocationWidget extends StatelessWidget {
  const DeliveryLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 4,
      dense: true,
      tileColor: lavender,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: CustomText(
          widgetData: CustomTextData(
              msg: "Delivery",
              weight: FontWeight.bold,
              size: context.getWidth(size: 28),
              color: pinkishRed)),
      subtitle: CustomText(
          widgetData: CustomTextData(
              msg: "RHYA3696, 3696 Al Imam Saud Ibn Abdul Aziz Brand Road,",
              size: context.getWidth(size: 28),
              color: black,
              overflow: TextOverflow.ellipsis)),
      leading: SvgPicture.asset(
        'assets/svg/moped.svg',
        width: context.getWidth(size: 16),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right_rounded,
        color: black,
        size: context.getWidth(size: 12),
      ),
    );
  }
}
