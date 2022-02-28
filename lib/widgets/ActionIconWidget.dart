import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class ActionIconWidget extends StatelessWidget {
  final String images;
  final bool isBorder;

  const ActionIconWidget({Key? key, required this.images, this.isBorder = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // do some thing
      },
      child: Container(
        width: s46,
        height: s46,
        padding: const EdgeInsets.all(s12),
        decoration: BoxDecoration(
            color: white,
            borderRadius: const BorderRadius.all(
              Radius.circular(s12),
            ),
            border: Border.all(color: isBorder ? secondary : Colors.transparent)),
        child: Image.asset(images),
      ),
    );
  }
}
