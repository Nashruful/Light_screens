import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/menu/products_screen/products_screen.dart';
import 'package:food_app/services/extensions/size_extension.dart';
import 'package:food_app/services/utilities/colors.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _pageIndex = 0;
  final List<Widget> _pages = const [
    ProductsScreen(),
    Center(child: Text('Bag Screen')),
    Center(child: Text('Orders Screen')),
    Center(child: Text('More Screen'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          elevation: 0,
          currentIndex: _pageIndex,
          onTap: (index) {
            _pageIndex = index;
            setState(() {});
          },
          backgroundColor: backgroundColor,
          selectedItemColor: pinkishRed,
          unselectedItemColor: black.withOpacity(0.6),
          selectedFontSize: context.getWidth(size: 26),
          unselectedFontSize: context.getWidth(size: 26),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/menu.svg',
                  colorFilter: ColorFilter.mode(
                      _pageIndex == 0 ? pinkishRed : black.withOpacity(0.45),
                      BlendMode.srcIn),
                ),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/bag.svg',
                    colorFilter: ColorFilter.mode(
                        _pageIndex == 1 ? pinkishRed : black.withOpacity(0.45),
                        BlendMode.srcIn)),
                label: "Bag"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/orders.svg',
                    colorFilter: ColorFilter.mode(
                        _pageIndex == 2 ? pinkishRed : black.withOpacity(0.45),
                        BlendMode.srcIn)),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/more.svg',
                    colorFilter: ColorFilter.mode(
                        _pageIndex == 3 ? pinkishRed : black.withOpacity(0.45),
                        BlendMode.srcIn)),
                label: 'More')
          ]),
      body: _pages[_pageIndex],
    );
  }
}
