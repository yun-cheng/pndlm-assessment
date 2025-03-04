import 'package:flutter/material.dart';
import 'package:pndlm_assessment/ui/common/background_mask.dart';
import 'package:pndlm_assessment/ui/common/clock_logo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: BackgroundMask()),
            ClockLogo(),
            SizedBox.expand(),
          ],
        ),
      ),
    );
  }
}
