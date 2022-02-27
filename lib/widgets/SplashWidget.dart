import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market/constants/typography.dart';

import '../constants/size.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/logo.png',
                width: s144,
                height: s144,
              ),
              const SizedBox(height: s20),
              Text(
                "Ethereum Market",
                style: extraBold.copyWith(fontSize: s24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
