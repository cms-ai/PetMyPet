import 'dart:io';

import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    this.body,
    this.topBar,
    this.bottomBar,
    super.key,
  });
  ///
  /// body widget
  final Widget? body;
  ///
  /// Using like header, appbar
  ///
  final Widget? topBar;
  ///
  /// Using like bottom navigation
  ///
  final Widget? bottomBar;

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: EdgeInsets.only(bottom: isIOS ? 16 : 0), // padding for IOS
        child: Column(
          children: [
            topBar ?? Container(),
            Expanded(
              child: SafeArea(
                child: body ?? Container(),
              ),
            ),
            bottomBar ?? Container(),
          ],
        ),
      ),
    );
  }
}
