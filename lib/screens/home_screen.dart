import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/hotel_screen.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/util/app_info_list.dart';

import '../util/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning", style: Styles.headLineStyle3,),
                          const Gap(5,),
                          Text("Book Tickets", style: Styles.headLineStyle,),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                    "assets/images/1.jpg"
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFf4F6FD),
                    ),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205)),
                        Text("Search", style: Styles.headLineStyle4,),
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headLineStyle2),
                      InkWell(
                          onTap: (){
                            print("You are tapped");
                          },

                          child: Text("View all",
                              style: Styles.textStyle.copyWith(
                                  color: Styles.primaryColor))),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             padding: const EdgeInsets.only(left: 20),
             child: Row(
               children: ticketList.map((e) => TicketView(isColor: null,ticket: e,)).toList(),
             ),
           ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headLineStyle2),
                  InkWell(
                      onTap: (){
                        print("You are tapped");
                      },

                      child: Text("View all",
                          style: Styles.textStyle.copyWith(
                              color: Styles.primaryColor))),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((e) => HotelScreen(hotel: e,)).toList(),
              ),
            ),
            Gap(15),
          ],
        )
    );
  }
}
