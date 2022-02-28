import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/typography.dart';
import '../../../../widgets/ActionIconWidget.dart';
import '../controllers/detail_screen_controller.dart';

class DetailScreenView extends GetView<DetailScreenController> {
  Widget HomeAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionIconWidget(
          images: "assets/images/share.png",
          isBorder: false,
        ),
        Row(
          children: const [
            ActionIconWidget(
                images: "assets/images/lovedark.png", isBorder: false),
            SizedBox(
              width: 15,
            ),
            ActionIconWidget(images: "assets/images/more.png", isBorder: false)
          ],
        )
      ],
    );
  }

  Widget NftImage() {
    return Container(
      child: Image.asset('assets/images/images3.png'),
    );
  }

  Widget BottomAction() {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(s40), topLeft: Radius.circular(s40)),
      ),
      child: Padding(
        padding: EdgeInsets.all(s28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 86,
                  height: 86,
                  child: Image.asset("assets/images/profile1.png"),
                ),
                SizedBox(
                  width: s28,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By MekaVerse",
                      style: semiBold.copyWith(fontSize: 16, color: gray4),
                    ),
                    Text(
                      "Meka #3139",
                      style: extraBold.copyWith(color: dark),
                    ),
                    RichText(
                      text: TextSpan(
                          text: "On sale for ",
                          style: semiBold.copyWith(fontSize: s20, color: gray4),
                          children: [
                            TextSpan(
                              text: "10 ETH",
                              style: extraBold.copyWith(
                                  fontSize: s20, color: primary),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: s28,
            ),
            Text(
              "Description",
              style: bold.copyWith(fontSize: s18),
            ),
            SizedBox(
              height: s12,
            ),
            Text(
              "Meka from the MekaVerse - A collection of 8,888 unique generative NFTs from an other universe. ",
              style: medium.copyWith(fontSize: s16),
            ),
            SizedBox(
              height: s12,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 67,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Make Offer",
                          style: semiBold.copyWith(fontSize: 18, color: white),
                        )),
                  ),
                ),
                SizedBox(
                  width: s12,
                ),
                Expanded(
                  child: Container(
                    height: 67,
                    decoration: BoxDecoration(
                      color: dark,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Place Bid",
                          style: semiBold.copyWith(fontSize: 18, color: white),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray3,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(s20),
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: s44,
                ),
                NftImage(),
              ],
            ),
          ),
          BottomAction()
        ],
      ),
    );
  }
}
