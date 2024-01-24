import 'package:app/src/common_widgets/common_widgets.dart';
import 'package:app/src/routing/app_routers.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      backgroundWidget: ColorFiltered(
        colorFilter: ColorFilter.mode(
          CommonColors.colorBlack.withOpacity(.7),
          BlendMode.srcOver,
        ),
        child: Assets.images.imgLoginBg.image(
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          children: [
            SizedBox(height: 130.h),
            Assets.images.imgLogo.svg(),
            SizedBox(height: 40.h),
            _buildInputWidget(
              hintText: "Email...",
              controller: TextEditingController(),
            ),
            SizedBox(height: 20.h),
            _buildInputWidget(
              hintText: "Password",
              controller: TextEditingController(),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: CommonColors.colorRed,
                  borderRadius: BorderRadius.circular(65.r)),
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: CommonColors.colorWhite,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRouters.signInRoute);
              },
              child: Text(
                "You have an account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.sp,
                  decoration: TextDecoration.underline,
                  decorationColor: CommonColors.colorRed,
                  fontWeight: FontWeight.w400,
                  color: CommonColors.colorRed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputWidget({
    String? hintText,
    required TextEditingController controller,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: CommonColors.colorWhite.withOpacity(.25),
          borderRadius: BorderRadius.circular(71.r)),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: CommonColors.colorWhite.withOpacity(.25),
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        style: TextStyle(
          color: CommonColors.colorWhite,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
