import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: context.getWidth(size: 3.3),
          height: context.getWidth(size: 6),
          decoration: BoxDecoration(
              color: const Color(0xffF6EFF4),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Color(0xffc0b9bd),
                  )),
              CustomText(
                  widgetData: CustomTextData(
                      weight: FontWeight.bold,
                      msg: "1",
                      size: context.getWidth(size: 24))),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: pinkishRed,
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: context.getWidth(size: 1.8),
          height: context.getWidth(size: 6),
          decoration: BoxDecoration(
              color: pinkishRed, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  widgetData: CustomTextData(
                      color: Colors.white,
                      msg: "Add to bag",
                      size: context.getWidth(size: 26))),
              CustomText(
                  widgetData: CustomTextData(
                      color: Colors.white,
                      msg: "SAR 51.00",
                      size: context.getWidth(size: 26)))
            ],
          ),
        )
      ],
    );
  }
}
