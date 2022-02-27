import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nft_market/constants/colors.dart';
import 'package:nft_market/constants/typography.dart';
import 'package:nft_market/widgets/ActionIconWidget.dart';
import 'package:nft_market/widgets/BadgeWidget.dart';
import 'package:nft_market/widgets/CardNftWidget.dart';
import 'package:nft_market/widgets/CardUserWidget.dart';

import '../../../../constants/size.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  Widget HomeAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/Cryptocurrency.png',
              width: s33,
              height: s33,
            ),
            const SizedBox(
              width: s12,
            ),
            Text(
              "8.42 ETH",
              style: extraBold.copyWith(fontSize: s24, color: dark),
            ),
          ],
        ),
        Row(
          children: const [
            ActionIconWidget(images: "assets/images/search.png"),
            SizedBox(
              width: 15,
            ),
            ActionIconWidget(images: "assets/images/bell.png")
          ],
        )
      ],
    );
  }

  Widget Categories() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categoies",
              style: bold.copyWith(fontSize: s20),
            ),
            Text(
              "View All",
              style: semiBold.copyWith(fontSize: s16, color: secondary),
            )
          ],
        ),
        const SizedBox(
          height: s20,
        ),
        SizedBox(
          height: s35,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              BadgeWidget(
                color: primary,
                text: "Art",
                isActive: true,
              ),
              SizedBox(
                width: s12,
              ),
              BadgeWidget(color: white, text: "Music"),
              SizedBox(
                width: s12,
              ),
              BadgeWidget(color: white, text: "Games"),
              SizedBox(
                width: s12,
              ),
              BadgeWidget(color: white, text: "Sports"),
              SizedBox(
                width: s12,
              ),
              BadgeWidget(color: white, text: "Photography"),
            ],
          ),
        )
      ],
    );
  }

  Widget Featured() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured NFTs",
              style: bold.copyWith(fontSize: s20),
            ),
            Text(
              "View All",
              style: semiBold.copyWith(fontSize: s16, color: secondary),
            )
          ],
        ),
        const SizedBox(
          height: s20,
        ),
        SizedBox(
          height: 420,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CardNftWidget(
                  image: "assets/images/images1.png",
                  userName: "ElDinerosVault",
                  idName: "ElDinerosVault #8419",
                  price: "2.15 ETH"),
              SizedBox(width: s12,),
              CardNftWidget(
                  image: "assets/images/images2.png",
                  userName: "BZsNFTs",
                  idName: "Turtle Town #8461",
                  price: "0.074 ETH"),
              SizedBox(width: s12,),
              CardNftWidget(
                  image: "assets/images/images3.png",
                  userName: "Mike_Tyson",
                  idName: "3LAND WORLD #134",
                  price: "8.88 ETH"),
            ],
          ),
        )
      ],
    );
  }

  Widget TopSeller() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Sellers",
              style: bold.copyWith(fontSize: s20),
            ),
            Text(
              "View All",
              style: semiBold.copyWith(fontSize: s16, color: secondary),
            )
          ],
        ),
        const SizedBox(
          height: s20,
        ),
        CardUserWidget(image: "assets/images/p1.png", name: "THE WATCHER", money: "\$739,420"),
        SizedBox(height: s12,),
        CardUserWidget(image: "assets/images/p2.png", name: "TURTLE TOWN NFT", money: "\$721,110"),
        SizedBox(height: s12,),
        CardUserWidget(image: "assets/images/p3.png", name: "WONDERPALS", money: "\$620,110"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(height: 44),
                Categories(),
                SizedBox(
                  height: 44,
                ),
                Featured(),
                SizedBox(
                  height: 44,
                ),
                TopSeller()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
