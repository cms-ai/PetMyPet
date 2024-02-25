import 'dart:io';

import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    this.backgroundWidget,
    this.body,
    this.topBar,
    this.bottomBar,
    this.resizeToAvoidBottomInset,
    super.key,
  });
  final Widget? backgroundWidget;

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

  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned.fill(child: backgroundWidget ?? Container()),
          Positioned(
            child: SafeArea(
              bottom: false,
              child: Container(
                padding:
                    EdgeInsets.only(bottom: isIOS ? 16 : 0), // padding for IOS
                child: Column(
                  children: [
                    topBar ?? Container(),
                    Expanded(
                      child: body ?? Container(),
                    ),
                    bottomBar ?? Container(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
