import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/typography.dart';

class CardNftWidget extends StatelessWidget {
  final String image, userName, idName, price;

  const CardNftWidget(
      {Key? key,
      required this.image,
      required this.userName,
      required this.idName,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.80,
      decoration: const BoxDecoration(
        color: gray,
        borderRadius: BorderRadius.all(
          Radius.circular(s40),
        ),
      ),
      child: Column(
        children: [
          Image.asset(image),
          Container(
            padding: EdgeInsets.all(s20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "By " + userName,
                      style: medium.copyWith(fontSize: 14, color: gray2),
                    ),
                    Text(
                      "Current Price",
                      style: medium.copyWith(fontSize: 14, color: gray2),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      idName,
                      style: bold.copyWith(fontSize: s15, color: dark),
                    ),
                    Text(
                      price,
                      style: bold.copyWith(fontSize: s18, color: dark),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 159,
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
                            style:
                            semiBold.copyWith(fontSize: 16, color: white),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Image.asset('assets/images/love.png')))
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
