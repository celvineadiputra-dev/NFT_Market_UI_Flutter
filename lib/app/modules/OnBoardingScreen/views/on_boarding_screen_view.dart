import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nft_market/app/modules/home/views/home_view.dart';
import 'package:nft_market/app/routes/app_pages.dart';
import 'package:nft_market/constants/colors.dart';
import 'package:nft_market/constants/typography.dart';

import '../../../../constants/size.dart';
import '../controllers/on_boarding_screen_controller.dart';

class OnBoardingScreenView extends GetView<OnBoardingScreenController> {
  const OnBoardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomAction() {
      return Container(
        width: Get.width,
        height: 377,
        padding: const EdgeInsets.symmetric(vertical: s36, horizontal: s28),
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(s40), topRight: Radius.circular(s40))),
        child: Column(
          children: [
            Text("NFT Market UI", style: extraLight,),
            const SizedBox(
              height: s28,
            ),
            Text(
              "Discover Rare Collectibles",
              style: extraBold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: s20,
            ),
            Text(
              "Buy and Sell Rare Collectibles from Top Artists.",
              style: medium.copyWith(color: secondary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: s40,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(HomeView());
                },
                child: Text(
                  'Explore NFTs',
                  style: medium.copyWith(color: white),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/onboarding1.png'),
          Align(
            alignment: Alignment.bottomCenter,
            child: bottomAction(),
          )
        ],
      ),
    );
  }
}
