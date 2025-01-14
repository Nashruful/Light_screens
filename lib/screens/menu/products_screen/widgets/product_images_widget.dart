import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/extensions/size_extension.dart';

class ProductImagesWidget extends StatelessWidget {
  const ProductImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: List.generate(3, (int index) {
          List<String> images = ['picture1', 'orange', 'flakes'];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/${images[index]}.png',
                fit: BoxFit.fill,
                width: context.getWidth(),
              ),
            ),
          );
        }),
        options: CarouselOptions(
          height: context.getHeight(size: 4.5),
          viewportFraction: 0.91,
          initialPage: 0,
          enableInfiniteScroll: false,
          autoPlay: false,
          scrollDirection: Axis.horizontal,
        ));
  }
}
