import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: size.width * 0.6,
        height: 350,
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [BoxShadow(color: Colors.grey)]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(12),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${hotel["image"]}"
                  )
                )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '${hotel['place']}',
                style: AppStyles.headlineStyle2,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "\$${hotel['price']}",
                    style: AppStyles.headlineStyle2,
                  ),
                  Text(
                    "/night",
                    style: AppStyles.textStyle.copyWith(color: Colors.black54),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Ensures it takes only necessary space
                children: [
                  Icon(Icons.location_on, color: Colors.black54), // Icon
                  SizedBox(width: 4), // Space between icon and text
                  Text("${hotel['destination']}", style: AppStyles.textStyle.copyWith(color: Colors.black54)), // Text
                ],
              )
            ),
          ],
        ),

    );
  }
}
