import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/screens/menu/product_details/product_detail_screen.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';
import 'package:food_app/services/utilities/sizes.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailScreen()));
            },
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/sushi.png',
                      height: context.getWidth(size: 4),
                      width: context.getWidth(size: 4),
                      fit: BoxFit.fill,
                    )),
                width10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          widgetData: CustomTextData(
                              color: black,
                              weight: FontWeight.bold,
                              msg: "Summer Sushi Platter",
                              size: context.getWidth(size: 24))),
                      CustomText(
                          widgetData: CustomTextData(
                              maxlines: 2,
                              overflow: TextOverflow.ellipsis,
                              color: charcoal,
                              msg:
                                  "Fresh and colorful, expertly made with the freshest succulent shrimp, creamy avocado",
                              size: context.getWidth(size: 30))),
                      height10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              widgetData: CustomTextData(
                                  color: pinkishRed,
                                  weight: FontWeight.bold,
                                  msg: "SAR 41.00",
                                  size: context.getWidth(size: 26))),
                          Container(
                            padding: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                color: pinkishRed.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(
                                  size: context.getWidth(size: 13),
                                  Icons.add,
                                  color: pinkishRed,
                                ),
                                CustomText(
                                    widgetData: CustomTextData(
                                        color: pinkishRed,
                                        weight: FontWeight.bold,
                                        msg: "Add to cart",
                                        size: context.getWidth(size: 26)))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          height4,
          const Divider(
            color: Color(0x70DADBE1),
          )
        ],
      ),
    );
  }
}
