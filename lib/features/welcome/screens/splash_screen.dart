import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
            (route) => false,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
        backgroundColor: const Color(AppColors.primaryColor),
        surfaceTintColor: const Color(AppColors.primaryColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 250,
                  width: 250,
                  child: Image.asset("images/Frame 1286 (1).png")),
            )
          ],
        ),
      ),
    );
  }
}
