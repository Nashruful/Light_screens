import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.widgetData});
  final CustomTextData widgetData;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: widgetData.maxlines,
      widgetData.msg,
      style: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: widgetData.size,
          fontWeight: widgetData.weight,
          color: widgetData.color,
          overflow: widgetData.overflow),
    );
  }
}

class CustomTextData {
  String msg;
  double size;
  FontWeight? weight;
  Color? color;
  int? maxlines;
  TextOverflow? overflow;

  CustomTextData(
      {required this.msg,
      required this.size,
      this.weight,
      this.color,
      this.overflow,
      this.maxlines});
}
