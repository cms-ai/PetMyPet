import 'package:app/src/utils/assets.gen.dart';
import 'package:flutter/material.dart';

class CommonBottomNavBar extends StatelessWidget {
  const CommonBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    final navBarData = [
      {
        "iconEnable": Assets.icons.icHome,
        "iconDisable": Assets.icons.icHomeStroke,
        "label": "Home",
      },
      
    ];


    return Container(
      child: Row(
        children: [

        ],
      ),
    );
  }

  Widget buildNavBarItem() {
    return Container(
      child: Assets.icons.icHome.svg(),
    );
  }
}