import 'package:flutter/material.dart';
// import 'package:my_ui/screens/login_screen.dart';
import 'package:my_ui/screens/register.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(fontFamily: "OpenSans"),
            home: Register());
      },
    );
  }
}
