import 'package:app/src/common_widgets/common_widgets.dart';
import 'package:app/src/routing/app_routers.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRouters.signInRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.images.imgLogo.path)],
        ),
      ),
    );
  }
}
