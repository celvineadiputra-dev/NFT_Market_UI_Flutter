import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/typography.dart';

class CardUserWidget extends StatelessWidget {
  final String image, name, money;

  const CardUserWidget(
      {Key? key, required this.image, required this.name, required this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: white, borderRadius: BorderRadius.all(Radius.circular(s24))),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 54,
                height: 54,
              ),
              SizedBox(
                width: s16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bold.copyWith(fontSize: s16),
                  ),
                  Text(
                    money,
                    style: semiBold.copyWith(fontSize: 16, color: secondary),
                  )
                ],
              ),
            ],
          ),
          Text(
            "Follow",
            style: bold.copyWith(color: primary, fontSize: s16),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
