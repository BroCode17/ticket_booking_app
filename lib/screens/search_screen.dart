import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/util/app_layout.dart';
import 'package:ticket_booking_app/widgets/icon_text.dart';
import 'package:ticket_booking_app/widgets/text_widgets.dart';

import '../util/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\n your looking for? ",
            style:
                Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
         const AppTicketTabs( t1: "Airline Tickets", t2: "Hotel"),
          // FittedBox(
          //   child: Container(
          //     padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(
          //         AppLayout.getHeight(50),
          //       ),
          //       color: const Color(0xFFF4F6FD),
          //     ),
          //     child: Row(
          //       children: [
          //         /**
          //          * Airline tickets
          //          */
          //         Container(
          //           width: size.width * .44,
          //           padding:
          //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //               left: Radius.circular(AppLayout.getHeight(50)),
          //             ),
          //             color: Colors.white,
          //           ),
          //           child: const Center(
          //             child: Text(
          //               "Airline Tickets",
          //             ),
          //           ),
          //         ),
          //         /**
          //          * Hotel
          //          */
          //         Container(
          //           width: size.width * .44,
          //           padding:
          //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //               right: Radius.circular(AppLayout.getHeight(50)),
          //             ),
          //             color: Colors.transparent,
          //           ),
          //           child: const Center(
          //             child: Text(
          //               "Hotel",
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(10)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const TextWidget(
              comingText: "Upcoming Flights", smallText: "view all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            children: [
              Container(
                width: size.width * 0.42,
                height: AppLayout.getHeight(425),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/one.jpg"),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(12),
                    ),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Gap(
                AppLayout.getHeight(10),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our service and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),

                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(12),
                  ),
                  Container(
                    width: size.width *.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18),),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(
                          AppLayout.getHeight(5),
                        ),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan()
                          ]
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
