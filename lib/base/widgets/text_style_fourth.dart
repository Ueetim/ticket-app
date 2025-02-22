import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool alignEnd;

  const TextStyleFourth({super.key, required this.text, this.alignEnd = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle4.copyWith(color: Colors.white),
      textAlign: alignEnd ? TextAlign.end : TextAlign.start,
    );
  }
}
