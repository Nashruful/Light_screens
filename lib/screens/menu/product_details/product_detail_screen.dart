import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/screens/menu/product_details/widgets/additions_widget.dart';
import 'package:food_app/screens/menu/product_details/widgets/checkout_widget.dart';
import 'package:food_app/screens/menu/product_details/widgets/sizes_widget.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';
import 'package:food_app/services/utilities/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        surfaceTintColor: backgroundColor,
        title: CustomText(
            widgetData: CustomTextData(
                color: black,
                msg: "Chicken egg bowl",
                size: context.getWidth(size: 22))),
        centerTitle: true,
        leadingWidth: context.getWidth(size: 4),
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_left_outlined,
                color: pinkishRed,
                size: context.getHeight(size: 20),
              ),
              CustomText(
                  widgetData: CustomTextData(
                      msg: "Menu",
                      size: context.getWidth(size: 24),
                      color: pinkishRed)),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Image.asset('assets/images/sushi.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              widgetData: CustomTextData(
                                  weight: FontWeight.bold,
                                  msg: "Summer Sushi Platter",
                                  size: context.getWidth(
                                    size: 22,
                                  ),
                                  color: black)),
                          height6,
                          CustomText(
                              widgetData: CustomTextData(
                                  color: charcoal,
                                  msg:
                                      "Fresh and colorful, expertly made with the freshest succulent shrimp, creamy avocado, and tangy pickled ginger. A drizzle of our signature sauce adds the perfect finishing touch.",
                                  size: context.getWidth(size: 26))),
                          height6,
                          CustomText(
                              widgetData: CustomTextData(
                                  color: pinkishRed,
                                  msg: "436 Calories",
                                  size: context.getWidth(size: 26))),
                          height10,
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0x70DADBE1),
                    ),
                    height6,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: CustomText(
                          widgetData: CustomTextData(
                              msg: "Choose your size",
                              color: black,
                              weight: FontWeight.w700,
                              size: context.getWidth(size: 22))),
                    ),
                    const SizesWidget(),
                    height10,
                    const Divider(
                      color: Color(0x70DADBE1),
                    ),
                    height6,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          CustomText(
                              widgetData: CustomTextData(
                                  msg: "Choose additions",
                                  color: black,
                                  weight: FontWeight.w700,
                                  size: context.getWidth(size: 22))),
                          width8,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: const Color(0xffDADBE1))),
                            child: CustomText(
                                widgetData: CustomTextData(
                                    msg: "Select up to 3",
                                    size: context.getWidth(size: 28))),
                          )
                        ],
                      ),
                    ),
                    height4,
                    const AdditionsWidget(),
                    height10,
                    const Divider(
                      color: Color(0x70DADBE1),
                    ),
                    height6,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              widgetData: CustomTextData(
                                  msg: "Notes",
                                  size: context.getWidth(size: 22),
                                  weight: FontWeight.w700,
                                  color: black)),
                          height8,
                          CustomText(
                              widgetData: CustomTextData(
                                  msg: "Add a Note",
                                  size: context.getWidth(size: 24),
                                  color: const Color(0xffdfdbde))),
                          height8,
                        ],
                      ),
                    ),
                    height10
                  ],
                ),
              ],
            )),
          ),
          const Divider(
            color: Color(0x70DADBE1),
          ),
          height4,
          const CheckoutWidget(),
          height14
        ],
      ),
    );
  }
}
