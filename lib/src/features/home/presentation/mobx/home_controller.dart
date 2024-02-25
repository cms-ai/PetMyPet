import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = $HomeController with _$HomeController;

abstract class $HomeController with Store {
  @observable
  int currentTabHomeIndex = 0;

  @action
  void handleChangeTabHomeIndex(int newIndex) {
    currentTabHomeIndex = newIndex;
  }
}
