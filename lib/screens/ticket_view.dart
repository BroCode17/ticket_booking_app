import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

import '../util/app_layout.dart';
import '../util/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * .90,
      height: AppLayout.getHeight(200), //To prevent overflow
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            /**
             * show the blue part of the card/
             */
            Container(
              child: Column(
                children: [
                  Container(
                    padding:  EdgeInsets.all(AppLayout.getHeight(16)),
                    decoration:  BoxDecoration(
                      color: Color(0xFF526799),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              ticket['from']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            const Spacer(),
                            const ThickContainer(),
                            Expanded(
                              child: Stack(children: [
                                SizedBox(
                                  height: 24,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context,
                                        BoxConstraints constraints) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            (constraints.constrainWidth() / 6)
                                                .floor(),
                                            (index) =>  SizedBox(
                                                  width: AppLayout.getWidth(3),
                                                  height: AppLayout.getHeight(1),
                                                  child: const DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white),
                                                  ),
                                                )),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                      angle: 1.5,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      )),
                                ),
                              ]),
                            ),
                            const ThickContainer(),
                            const Spacer(),
                            Text(
                              ticket['to']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        const Gap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(ticket['from']['name'],
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white)),
                            ),
                            Text(
                              ticket['flying_time'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(ticket['to']['name'],
                                  textAlign: TextAlign.end,
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                              width: 3,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            "Date",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            "Number",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
