import 'package:app/src/utils/assets.gen.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearchWidget extends StatefulWidget {
  const HomeSearchWidget({super.key});

  @override
  State<HomeSearchWidget> createState() => _HomeSearchWidgetState();
}

class _HomeSearchWidgetState extends State<HomeSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(21.r),
      ),
      child: Row(
        children: [
          Assets.icons.icSearchSmall.svg(
            color: CommonColors.colorBlack.withOpacity(.25),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Send the sample",
                hintStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: CommonColors.colorBlack.withOpacity(.25),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: CommonColors.colorBlack,
              ),
            ),
          ),
          Assets.icons.icVoice.svg(
            color: CommonColors.colorBlack.withOpacity(.55),
          ),
        ],
      ),
    );
  }
}
