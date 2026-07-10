import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meera_medisist/core/constants/app_colors.dart';
import 'package:meera_medisist/screens/login/login_screen.dart';

//import '../../core/constants/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;
  String status = "Loading...";
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    debugPrint("Splash Screen Initialized");

    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      debugPrint("Timer Completed");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer;
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_pharmacy, size: 60, color: AppColors.primary),

            SizedBox(height: 25),

            const Text(
              'Welcome To . . . .',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),

            const Text(
              'Meera MediSist',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              'Your Smart Healthcare Companion',
              style: TextStyle(fontSize: 16, color: AppColors.grey),
            ),

            const SizedBox(height: 10),
            if (isLoading)
              CircularProgressIndicator(color: AppColors.primary)
            else
              Icon(Icons.check_circle, size: 60, color: AppColors.primary),
            const SizedBox(height: 10),

            Text(status, style: TextStyle(fontSize: 14, color: AppColors.grey)),
          ],
        ),
      ),
    );
  }
}
