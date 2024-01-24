import 'package:app/src/common_widgets/common_widgets.dart';
import 'package:app/src/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
