import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class SizesWidget extends StatefulWidget {
  const SizesWidget({super.key});

  @override
  State<SizesWidget> createState() => _SizesWidgetState();
}

class _SizesWidgetState extends State<SizesWidget> {
  String? _size = 'Small';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  widgetData: CustomTextData(
                      weight: _size == 'Small'
                          ? FontWeight.w700
                          : FontWeight.normal,
                      msg: "Small",
                      size: context.getWidth(size: 24))),
              Row(
                children: [
                  CustomText(
                      widgetData: CustomTextData(
                          msg: "+ SAR 10.00",
                          size: context.getWidth(size: 24),
                          color: _size == 'Small' ? pinkishRed : charcoal)),
                  Radio(
                    fillColor: WidgetStatePropertyAll(_size == 'Small'
                        ? pinkishRed
                        : const Color(0xffDADBE1)),
                    value: 'Small',
                    groupValue: _size,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          _size = value;
                        });
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  widgetData: CustomTextData(
                      weight: _size == 'Medium'
                          ? FontWeight.w700
                          : FontWeight.normal,
                      msg: "Medium",
                      size: context.getWidth(size: 24))),
              Row(
                children: [
                  CustomText(
                      widgetData: CustomTextData(
                          msg: "+ SAR 12.00",
                          size: context.getWidth(size: 24),
                          color: _size == 'Medium' ? pinkishRed : charcoal)),
                  Radio(
                    fillColor: WidgetStatePropertyAll(_size == 'Medium'
                        ? pinkishRed
                        : const Color(0xffDADBE1)),
                    value: 'Medium',
                    groupValue: _size,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          _size = value;
                        });
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  widgetData: CustomTextData(
                      weight: _size == 'Large'
                          ? FontWeight.w700
                          : FontWeight.normal,
                      msg: "Large",
                      size: context.getWidth(size: 24))),
              Row(
                children: [
                  CustomText(
                      widgetData: CustomTextData(
                          msg: "+ SAR 15.00",
                          size: context.getWidth(size: 24),
                          color: _size == 'Large' ? pinkishRed : charcoal)),
                  Radio(
                    fillColor: WidgetStatePropertyAll(_size == 'Large'
                        ? pinkishRed
                        : const Color(0xffDADBE1)),
                    value: 'Large',
                    groupValue: _size,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          _size = value;
                        });
                      });
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
