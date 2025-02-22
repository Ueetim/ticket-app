import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // get the size of the screen

    return SizedBox(
        width: size.width * 0.85, // 85% of screen
        height: 189,
        child: Container(
          margin: EdgeInsets.only(right: wholeScreen ? 0 : 12),
          child: Column(
            children: [
              // blue part
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
                ),
                child: Column(
                  children: [
                    // show departure and destination with icons
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          child: TextStyleThird(text: ticket['from']['code'])
                        ),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack( // stack is used for overlapping items
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutbuilderWidget(randomDivider: 6,),
                                ),
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.57,
                                    child: const Icon(Icons.local_airport_rounded, color: Colors.white,)
                                  ),
                                )
                              ],
                            )
                        ),
                        const BigDot(),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 50,
                          child: TextStyleThird(text: ticket['to']['code'], alignEnd: true,)
                        )
                      ],
                    ),

                    SizedBox(height: 3,),

                    // show departure and destination names with time
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket['from']['name'])
                        ),
                        Expanded(child: Container()),
                        Text(ticket['flying_time'], style: AppStyles.headlineStyle4.copyWith(color: Colors.white),),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket['to']['name'], alignEnd: true)
                        )
                      ],
                    ),
                  ],
                )
              ),

              // mid-section
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: Row(
                  children: [
                    BigCircle(),
                    Expanded(
                      child: AppLayoutbuilderWidget(randomDivider: 20, width: 10,),
                    ),

                    // rotate it
                    Transform.rotate(
                      angle: 3.14159, // π radians (180 degrees)
                      child: BigCircle(),
                    )
                  ],
                ),
              ),

              // orange part
              Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketOrange,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
                  ),
                  child: Column(
                    children: [
                      // show departure and destination with icons
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextStyleThird(text: ticket['date'])
                          ),
                          Expanded(child: Container()),
                          Text(ticket['departure_time'], style: AppStyles.headlineStyle3.copyWith(color: Colors.white),),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleThird(text: '${ticket['number']}', alignEnd: true,),
                          )
                        ],
                      ),

                      SizedBox(height: 3,),

                      // show departure and destination names with time
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(text: "Date")
                          ),
                          Expanded(child: Container()),
                          Text("Departure time", style: AppStyles.headlineStyle4.copyWith(color: Colors.white),),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(text: "Number", alignEnd: true,)
                          )
                        ],
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),

    );
  }
}
