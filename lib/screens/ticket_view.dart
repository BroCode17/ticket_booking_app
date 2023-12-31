import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

import '../util/app_layout.dart';
import '../util/app_styles.dart';
import '../widgets/c_loyout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * .85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true ? 162: 169), //To prevent overflow
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
                      color: isColor == null ? const Color(0xFF526799) : Colors.white,
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
                              style: isColor == null ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white) : Styles.headLineStyle3,
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
                                                  child:  DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        color: isColor == null ? Colors.white : Colors.grey.shade300),
                                                  ),
                                                )),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                      angle: 1.5,
                                      child:  Icon(
                                        Icons.local_airport_rounded,
                                        color: isColor == null ? Colors.white : const Color(0xFF8ACCF7),
                                      )),
                                ),
                              ]),
                            ),
                            const ThickContainer(),
                            const Spacer(),
                            Text(
                              ticket['to']['code'],
                              style: isColor == null ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white ) : Styles.headLineStyle3,
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
                                  style: isColor == null? Styles.headLineStyle4
                                      .copyWith(color: Colors.white): Styles.headLineStyle4),
                            ),
                            Text(
                              ticket['flying_time'],
                              style: isColor == null? Styles.headLineStyle4
                                  .copyWith(color: Colors.white): Styles.headLineStyle4,
                            ),
                            SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(ticket['to']['name'],
                                  textAlign: TextAlign.end,
                                  style: isColor == null ?  Styles.headLineStyle4
                                      .copyWith(color: Colors.white): Styles.headLineStyle4),
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
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(section: 15,)
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.grey.shade200: Colors.white,
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
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21: 0),
                  bottomRight: Radius.circular(isColor == null ? 21: 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppCoLayout(fText:ticket['date'] , sText: 'Date', cAlig: CrossAxisAlignment.start,isColor: isColor),
                      AppCoLayout(fText:ticket['departure_time'] , sText: 'Departure time', cAlig: CrossAxisAlignment.center, isColor: isColor,),
                      AppCoLayout(fText:ticket['number'].toString() , sText: 'Number', cAlig: CrossAxisAlignment.end, isColor: isColor),
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
