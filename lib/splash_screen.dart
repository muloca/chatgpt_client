import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/uniao.png',
          width: 250,
        ),
        const Text('Powered by'),
        Image.asset(
          'assets/pdm_logo.png',
          width: 250,
        ),
      ],
    );
  }
}
