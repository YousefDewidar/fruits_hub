import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/egypt.png', height: 180),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/egypt.png', height: 180),
          ),
          Image.asset('assets/egypt.png', height: 180),
        ],
      ),
    );
  }
}
