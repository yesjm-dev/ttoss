import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    delay(() {
      Nav.clearAllAndPush(const MainScreen());
    }, const Duration(milliseconds: 1500));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/image/splash/splash.png",
        width: 192,
        height: 192,
      ),
    );
  }
}
