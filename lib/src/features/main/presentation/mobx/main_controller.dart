import 'package:app/src/features/home/presentation/pages/home_screen.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'main_controller.g.dart';

class MainController = $MainController with _$MainController;

abstract class $MainController with Store {
  final List<Widget> mainBodyList = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  final List<Map<String, dynamic>> bottomNavBarList = [
    {
      "iconEnable": Assets.icons.icHome,
      "iconDisable": Assets.icons.icHomeStroke,
      "label": "Home"
    },
    {
      "iconEnable": Assets.icons.icCircle,
      "iconDisable": Assets.icons.icCircleStroke,
      "label": "Circle"
    },
    {
      "iconEnable": Assets.icons.icReleaseStroke,
      "iconDisable": Assets.icons.icReleaseStroke,
      "label": "Add"
    },
    {
      "iconEnable": Assets.icons.icMessage,
      "iconDisable": Assets.icons.icMessageStroke,
      "label": "Message"
    },
    {
      "iconEnable": Assets.icons.icUser,
      "iconDisable": Assets.icons.icUserStroke,
      "label": "User"
    },
  ];

  @observable
  int currentNavbarIndex = 0;

  @action
  void handleChangeNavbar(int newIndex) {
    currentNavbarIndex = newIndex;
  }
}
