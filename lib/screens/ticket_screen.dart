import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/util/app_info_list.dart';
import 'package:ticket_booking_app/util/app_layout.dart';

import '../util/app_styles.dart';
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
                child: TicketView(ticket: ticketList[0]),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
