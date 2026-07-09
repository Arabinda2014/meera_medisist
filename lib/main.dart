import 'package:flutter/material.dart';
import 'screens/login/login_screen.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

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
      home: const LoginScreen(),
    );
  }
}
