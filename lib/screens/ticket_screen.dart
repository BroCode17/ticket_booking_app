import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/util/app_info_list.dart';
import 'package:ticket_booking_app/util/app_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../util/app_styles.dart';
import '../widgets/c_loyout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle,),
              const AppTicketTabs(t1: "Upcoming", t2: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const SizedBox(height: 1,),
              Container(
                // width: size.width * .85,
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                       AppCoLayout(fText: "Flutter DB",sText: "Passenger", cAlig: CrossAxisAlignment.start, isColor: true),
                       AppCoLayout(fText: "1234 123456",sText: "Passport", cAlig: CrossAxisAlignment.end, isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(section: 15, isColor: true, w: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppCoLayout(fText: "0055 444 77147",sText: "Number of E-ticket", cAlig: CrossAxisAlignment.start, isColor: true),
                        AppCoLayout(fText: "B2SG28",sText: "Booking code", cAlig: CrossAxisAlignment.end, isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(section: 15, isColor: true, w: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 1234", style: Styles.headLineStyle3,)
                              ],
                            ),

                            Text("Payment method", style: Styles.headLineStyle4,)
                          ],
                        ),
                        const AppCoLayout(fText: "\$249.99",sText: "price", cAlig: CrossAxisAlignment.end, isColor: true),
                        const SizedBox(height: 1,),
                      ],
                    ),
                  ],
                ),
              ),
              /**
               * barcode
               */
              const SizedBox(height: 1,),
              Container(
                margin:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),),
                padding:  EdgeInsets.only(top: AppLayout.getHeight(15), bottom: AppLayout.getHeight(15)),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(21)), bottomLeft: Radius.circular(AppLayout.getHeight(21))),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(data: 'https://github.com/martinovovo',
barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Container(
                 margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(0),vertical: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0],),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               border: Border.all(color: Styles.textColor, width: 2),
             ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),  Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               border: Border.all(color: Styles.textColor, width: 2),
             ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
