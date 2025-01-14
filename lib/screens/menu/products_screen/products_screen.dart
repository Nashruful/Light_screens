import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/screens/menu/products_screen/widgets/app_bar_custom_widget.dart';
import 'package:food_app/screens/menu/products_screen/widgets/delivery_location_widget.dart';
import 'package:food_app/screens/menu/products_screen/widgets/product_card_widget.dart';
import 'package:food_app/screens/menu/products_screen/widgets/product_images_widget.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.getHeight(size: 10)),
        child: const AppBarCustomWidget(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const ProductImagesWidget(),
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: DeliveryLocationWidget(),
                    ),
                    DefaultTabController(
                      length: 5,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TabBarView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: List.generate(
                                      5,
                                      (int index) => SingleChildScrollView(
                                              child: Column(
                                            children:
                                                List.generate(6, (int index) {
                                              return const ProductCardWidget();
                                            }),
                                          )))),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TabBar(
                                    labelColor: pinkishRed,
                                    indicatorColor: pinkishRed,
                                    unselectedLabelColor:
                                        black.withOpacity(0.6),
                                    indicator: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: pinkishRed, width: 3))),
                                    tabAlignment: TabAlignment.start,
                                    isScrollable: true,
                                    tabs: List.generate(5, (int index) {
                                      List<String> tapList = [
                                        'Ramadan deals',
                                        'Main dishes',
                                        'Side dishes',
                                        'For sharing',
                                        'Drinks'
                                      ];
                                      return Tab(
                                          child: CustomText(
                                        widgetData: CustomTextData(
                                          msg: tapList[index],
                                          size: context.getWidth(size: 20),
                                        ),
                                      ));
                                    })),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
