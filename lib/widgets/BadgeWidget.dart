import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/typography.dart';

class BadgeWidget extends StatelessWidget {
  final Color color;
  final String text;
  final bool isActive;

  const BadgeWidget({Key? key, required this.color, required this.text, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //do something
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: s20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: isActive ? Colors.transparent :  secondary),
          borderRadius: const BorderRadius.all(
            Radius.circular(s12),
          ),
        ),
        child: Text(
          text,
          style: semiBold.copyWith(color: isActive ? white : dark, fontSize: s15),
        ),
      ),
    );
  }
}
