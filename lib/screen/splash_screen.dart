import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test1/screen/home_screen.dart';
import 'package:test1/screen/login_screen.dart';
import 'package:test1/screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // ✅ Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
            // 👆 Change to HomeScreen() if you want skip login
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/pka.webp",
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
