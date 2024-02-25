import 'package:app/src/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeOptionWidget extends StatelessWidget {
  const HomeOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              _buildOptionItem(
                image: Assets.icons.icRanking,
                content: "Ranking",
              ),
              _buildOptionItem(
                image: Assets.icons.icDiscuss,
                content: "Discuss",
              ),
              _buildOptionItem(
                image: Assets.icons.icSurrounding,
                content: "Surrounding",
              ),
            ],
          ),
          SizedBox(height: 10.h),
          // SingleChildScrollView(
          //   child: Row(
          //     children: [
          //       Container(
          //         width: double.infinity,
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _buildOptionItem({
    required AssetGenImage image,
    required String content,
  }) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Assets.icons.icRanking.svg(),
          SizedBox(height: 40.h, width: 40.h, child: image.image()),
          Text(
            content,
            style: TextStyle(
              fontSize: 13.sp,
            ),
          )
        ],
      ),
    );
  }
}
