import 'package:app/src/common_widgets/common_widgets.dart';
import 'package:app/src/features/main/presentation/mobx/main_controller.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainController mainController = MainController();
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child:
                mainController.mainBodyList[mainController.currentNavbarIndex],
          ),
          Observer(builder: (_) {
            return Row(children: [
              ...List.generate(
                mainController.bottomNavBarList.length,
                (index) {
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        if (index != 2) {
                          mainController.handleChangeNavbar(index);
                        } else {
                          //TODO: Go to add route
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: .5,
                              color: CommonColors.colorBlack.withOpacity(.05),
                            ),
                          ),
                        ),
                        child: index == mainController.currentNavbarIndex
                            ? (mainController.bottomNavBarList[index]
                                    ["iconEnable"] as SvgGenImage)
                                .svg(
                                color: CommonColors.colorRed,
                              )
                            : (mainController.bottomNavBarList[index]
                                    ["iconDisable"] as SvgGenImage)
                                .svg(),
                      ),
                    ),
                  );
                },
              )
            ]);
          }),
        ],
      ),
    );
  }
}
