import 'package:app/src/features/sign_in/presentation/pages/sign_in_screen.dart';
import 'package:app/src/features/splash/presentation/pages/splash_screen.dart';
import 'package:app/src/routing/app_routers.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Pet my pet',
          theme: Themes().lightTheme,
          initialRoute: AppRouters.splashRoute,
          onGenerateRoute: AppRouters().onGenerateRoute,
        );
      },
    );
  }
}
