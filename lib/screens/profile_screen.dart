import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/util/app_layout.dart';
import 'package:ticket_booking_app/widgets/c_loyout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../util/app_styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20)),
      children: [
        Gap(AppLayout.getHeight(40)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(86),
              width: AppLayout.getHeight(86),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/1.jpg'),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(8)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Book Tickets",
                  style: Styles.headLineStyle2,
                ),
                Text(
                  "New-York",
                  style: Styles.headLineStyle4,
                ),
                Gap(AppLayout.getHeight(10)),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(3),
                      vertical: AppLayout.getHeight(3)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(100)),
                    color: const Color(0xFFFEF4F3),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(3)),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text(
                        "Premium status",
                        style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Column(
                children: [
                  Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
        Gap(AppLayout.getHeight(8)),
        Divider(
          color: Colors.grey.shade300,
        ),
        Gap(AppLayout.getHeight(8)),
        Stack(
          children: [
            Container(
              height: AppLayout.getHeight(90),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
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
                    color: Color(0xFF264CD2),
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(19)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Avarta
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 27,
                    ),
                  ),

                  ///Icon container
                  ///G
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "You've got a new award",
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text("You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Gap(AppLayout.getHeight(15)),
        Text("Accumulated miles", style: Styles.headLineStyle2),
        Gap(AppLayout.getHeight(20)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)
              ]),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(15)),
              Text("192812",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  )),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Miles accrued",
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    "23 May 2021",
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(4)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppCoLayout(
                      fText: "23 042",
                      sText: "Miles",
                      cAlig: CrossAxisAlignment.start,
                      isColor: true),
                  AppCoLayout(
                      fText: "Airline CO",
                      sText: "Received from",
                      cAlig: CrossAxisAlignment.end,
                      isColor: true),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(
                section: 12,
                isColor: true,
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppCoLayout(
                      fText: "24",
                      sText: "Miles",
                      cAlig: CrossAxisAlignment.start,
                      isColor: true),
                  AppCoLayout(
                      fText: "BroCode",
                      sText: "Received from",
                      cAlig: CrossAxisAlignment.end,
                      isColor: true),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(
                section: 12,
                isColor: true,
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppCoLayout(
                      fText: "52 340",
                      sText: "Miles",
                      cAlig: CrossAxisAlignment.start,
                      isColor: true),
                  AppCoLayout(
                      fText: "Exuma",
                      sText: "Received from",
                      cAlig: CrossAxisAlignment.end,
                      isColor: true),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
            ],
          ),
        ),
        Gap(AppLayout.getHeight(25)),
        InkWell(
          onTap: () => print("Happy Coding"),
          child: Center(
            child: Text(
              "How to get more miles",
              style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
