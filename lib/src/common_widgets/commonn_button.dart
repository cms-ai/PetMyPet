import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.content = "",
    this.buttonColor,
    this.borderRadius,
    this.onTap,
  });
  final String content;
  final Color? buttonColor;
  final BorderRadiusGeometry? borderRadius;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CommonColors.colorRed,
          borderRadius: borderRadius ?? BorderRadius.circular(65.r),
        ),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: CommonColors.colorWhite,
          ),
        ),
      ),
    );
  }
}
