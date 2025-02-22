import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText,required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(bigText, style: AppStyles.headlineStyle2,),
            InkWell( // we use Inkwell because it contains tap event
              onTap: () => Navigator.pushNamed(context, "/all_tickets"),
              child: Text(smallText, style: AppStyles.textStyle.copyWith( // copyWith overwrites style
                color: AppStyles.primaryColor
              ),),
            )
          ],
        ),
    );
  }
}
