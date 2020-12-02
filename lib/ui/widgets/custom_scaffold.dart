/*
* This page created by Moustafa Essam.
*
* the documentation will be available soon.
* */

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'custom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final Function onBack;
  final Widget trailing;
  final bool scrolls;

  CustomScaffold(
      {@required this.title,
      @required this.child,
      this.onBack,
      this.scrolls = true,
      this.trailing}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            CustomAppbar(
              title: title,
              onBack: onBack,
              trailing: trailing,
            ),
            Expanded(
              child: scrolls
                  ? SingleChildScrollView(
                      child: SafeArea(top: false, child: child),
                    )
                  : SafeArea(top: false, child: child),
            )
          ],
        ),
      ),
    );
  }
}
