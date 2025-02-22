import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(decoration: BoxDecoration(
        color: AppStyles.bgColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
      )),
    );
  }
}
