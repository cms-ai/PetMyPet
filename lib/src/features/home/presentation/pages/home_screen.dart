import 'dart:math';

import 'package:app/src/common_widgets/common_widgets.dart';
import 'package:app/src/features/home/presentation/mobx/home_controller.dart';
import 'package:app/src/features/home/presentation/widgets/widgets.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = HomeController();
  final List<Widget> homeBodyList = [
    HomeSearchWidget(),
    HomeOptionWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      topBar: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(opacity: 0, child: Assets.icons.icNotifyStroke.svg()),
            Observer(builder: (context) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTabItem(
                      title: "Select",
                      isEnable: controller.currentTabHomeIndex == 0,
                      onTap: () => controller.handleChangeTabHomeIndex(0),
                    ),
                    SizedBox(width: 40.w),
                    _buildTabItem(
                      title: "Discover",
                      isEnable: controller.currentTabHomeIndex == 1,
                      onTap: () => controller.handleChangeTabHomeIndex(1),
                    ),
                  ]);
            }),
            Assets.icons.icNotifyStroke.svg(),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView.builder(
          itemCount: homeBodyList.length,
          itemBuilder: (context, index) {
            return homeBodyList[index];
          },
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required String title,
    required bool isEnable,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: CommonColors.colorBlack.withOpacity(isEnable ? 1 : .4)),
          ),
          if (isEnable) Assets.icons.icHalfEllipse.svg()
        ],
      ),
    );
  }
}
