// import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      // ListView makes it scrollable
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     // ensure they start at the same left alignment
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Good morning", style: AppStyles.headlineStyle3),
                       const SizedBox(height: 5,), // create spacing between the texts
                       Text("Book Tickets", style: AppStyles.headlineStyle1)
                     ],
                   ),
                   Container(
                     width: 50,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                         image: AssetImage(AppMedia.logo),
                       )
                     ),
                   )
                 ],
               ),
               const SizedBox(height: 25),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: const Color(0xFFF4F6FD)
                 ),
                 child: const Row(
                   children: [
                     Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                     Text("Search")
                   ],
                 ),
               )
             ],
            ),
          ),
          const SizedBox(height: 40,),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(context, "/all_tickets"),
          ),
          const SizedBox(height: 20,),

          // for scroll snap
          SizedBox(
            height: 185,
            // padding: EdgeInsets.symmetric(horizontal: 20),
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.90),
              itemCount: ticketList.length,
              itemBuilder: (context, index) {
                return TicketView(ticket: ticketList[index]);
              },
            ),
          ),

          const SizedBox(height: 40,),
          AppDoubleText(
              bigText: 'Hotels',
              smallText: 'View all',
              func: () => {},
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: hotelList.take(2).map((hotel) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20), // Space between hotels
                  child: Hotel(hotel: hotel),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
