import 'package:flutter/material.dart';
import 'package:flutter_airbnb_prpr/components/home/home_body_popular.dart';
import 'package:flutter_airbnb_prpr/size.dart';

import 'home_body_banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth 70% : ${bodyWidth}");

    return Align(
      child: SizedBox(
          child: Column(
        children: [
          HomeBodyBanner(),
          HomeBodyPopular(),
          SizedBox(
            height: gap_l,
          )
        ],
      )),
    );
  }
}
