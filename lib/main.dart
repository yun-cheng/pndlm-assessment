import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/app_theme.dart';
import 'package:pndlm_assessment/ui/screens/login/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      home: Scaffold(body: LoginScreen()),
    );
  }
}
