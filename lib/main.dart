import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'package:meera_medisist/screens/splash/splash_screen.dart';

void main() {
  runApp(const MeeraMediSistApp());
}

class MeeraMediSistApp extends StatelessWidget {
  const MeeraMediSistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meera MediSist',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
