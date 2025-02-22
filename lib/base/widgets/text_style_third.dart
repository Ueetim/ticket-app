import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool alignEnd;

  const TextStyleThird({super.key, required this.text, this.alignEnd = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
      textAlign: alignEnd ? TextAlign.end : TextAlign.start,
    );
  }
}
