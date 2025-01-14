import 'package:flutter/material.dart';
import 'package:food_app/components/text/custom_text.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class AdditionsWidget extends StatefulWidget {
  const AdditionsWidget({super.key});

  @override
  State<AdditionsWidget> createState() => _AdditionsWidgetState();
}

class _AdditionsWidgetState extends State<AdditionsWidget> {
  final Map<String, bool> _options = {
    'Herbs': false,
    'Chicken': false,
    'Egg': false,
  };

  final Map<String, String> _prices = {
    'Herbs': '1.00',
    'Chicken': '5.00',
    'Egg': '5.00',
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 18),
      child: Column(
        children: _options.keys.map((option) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      side: BorderSide(color: Color(0xffDADBE1)),
                      activeColor: pinkishRed,
                      value: _options[option],
                      onChanged: (value) {
                        setState(() {
                          _options[option] = value ?? false;
                        });
                      }),
                  CustomText(
                      widgetData: CustomTextData(
                          color: black,
                          weight: _options[option] == true
                              ? FontWeight.w700
                              : FontWeight.normal,
                          msg: option,
                          size: context.getWidth(size: 24)))
                ],
              ),
              CustomText(
                  widgetData: CustomTextData(
                      color: _options[option] == true ? pinkishRed : black,
                      msg: "+ SAR ${_prices[option]}",
                      size: context.getWidth(size: 24)))
            ],
          );
        }).toList(),
      ),
    );
  }
}
