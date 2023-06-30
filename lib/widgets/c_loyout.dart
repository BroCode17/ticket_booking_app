import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../util/app_layout.dart';
import '../util/app_styles.dart';

class AppCoLayout extends StatelessWidget {
  final CrossAxisAlignment cAlig;
  final String fText;
  final String sText;
  final bool? isColor;
  const AppCoLayout({Key? key ,required this.fText, required this.sText, required this.cAlig , this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: cAlig,
      children: [
        Text(fText, style: isColor ==null ? Styles.headLineStyle3
            .copyWith(color: Colors.white) : Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(sText, style: isColor ==null ? Styles.headLineStyle4
            .copyWith(color: Colors.white) : Styles.headLineStyle4,),
      ],
    );
  }
}
