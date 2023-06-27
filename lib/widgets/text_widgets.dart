import 'package:flutter/material.dart';

import '../util/app_styles.dart';

class TextWidget extends StatelessWidget {
  final String comingText;
  final String smallText;
  const TextWidget({Key? key, required this.comingText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(comingText, style: Styles.headLineStyle2),
          InkWell(
              onTap: (){
                print("You are tapped");
              },

              child: Text(smallText,
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor))),
        ],
    );
  }
}

/**
 * Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child:
 */
