import 'package:flutter/material.dart';
import 'package:food_app/screens/navBar/bottom_navigation_bar_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                GoogleFonts.vazirmatnTextTheme(Theme.of(context).textTheme)),
        debugShowCheckedModeBanner: false,
        home: const BottomNavigationBarScreen());
  }
}
