import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String t1;
  final String t2;

  const AppTicketTabs({Key? key, required this.t1, required this.t2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            /**
             * Airline tickets
             */
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white,
              ),
              child:  Center(
                child: Text(
                 t1,
                ),
              ),
            ),
            /**
             * Hotel
             */
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.transparent,
              ),
              child:  Center(
                child: Text(
                  t2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
