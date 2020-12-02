 
import 'dart:math';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../ui/widgets/drop_down_list.dart';
import '../../../ui/widgets/save_button.dart';
import '../../../ui/widgets/skip_button.dart';
import '../../../ui/widgets/state_switcher.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _first = true;

//

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: kMainPadding),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 150, bottom: 40),
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: <Color>[kDarkPinkForeground, kMiddleColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      'Mimas',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ), //for image
                Center(
                  child: Text(
                    'مرحباً بك َ',
                    style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w900,
                          fontSize: 36,
                        ),
                  ),
                ), //for title
                SizedBox(height: 70),
                Container(
                  height: 80,
                  child: AnimatedSwitcher(
                    child: _first
                        ? Column(
                            children: [
                              Text(
                                "اختيار اللغة",
                                style:
                                    Theme.of(context).textTheme.title.copyWith(
                                          color: kMiddleColor,
                                        ),
                              ),
                              DropDownList(
                                hint: "اختيار اللغة",
                                items: ["العربية"],
                                onChanged: (newValue) {},
                              )
                            ],
                          )
                        : Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 40,
                                  child: SaveButton(
                                    title: 'تسجيل دخول',
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: kMainPadding,
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  child: SkipButton(
                                    title: 'تسجيل جديد',
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                    duration: Duration(milliseconds: 400),
                  ),
                ),
                SizedBox(height: kMainPadding * 2),
                Center(
                  child: StateSwitcher(
                    currentItem: _first ? 0 : 1,
                    itemCount: 2,
                  ),
                ), //Radio
                //button
              ],
            ),
          ),
          floatingActionButtonLocation: _RightFloatFabLocation(),
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.white,
            child: Text(
              'زائر',
              style: Theme.of(context).textTheme.title.copyWith(
                    color: kRightColor,
                  ),
            ),
            shape:
                CircleBorder(side: BorderSide(color: kMiddleColor, width: 3)),
            onPressed: () {
              setState(() {
                _first = !_first;
              });
            },
          )),
    );
  }
}

class _RightFloatFabLocation extends FloatingActionButtonLocation {
  const _RightFloatFabLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Compute the x-axis offset.
    double fabX;
    assert(scaffoldGeometry.textDirection != null);
    switch (scaffoldGeometry.textDirection) {
      case TextDirection.rtl:
        final double endPadding = scaffoldGeometry.minInsets.right;
        fabX = scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width -
            kFloatingActionButtonMargin -
            endPadding;
        break;
      case TextDirection.ltr:
        final double endPadding = scaffoldGeometry.minInsets.left;
        fabX = kFloatingActionButtonMargin + endPadding;
        break;
    }

    final double contentBottom = scaffoldGeometry.contentBottom;
    final double bottomSheetHeight = scaffoldGeometry.bottomSheetSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double snackBarHeight = scaffoldGeometry.snackBarSize.height;

    double fabY = contentBottom - fabHeight - kFloatingActionButtonMargin;
    if (snackBarHeight > 0.0)
      fabY = min(
          fabY,
          contentBottom -
              snackBarHeight -
              fabHeight -
              kFloatingActionButtonMargin);
    if (bottomSheetHeight > 0.0)
      fabY = min(fabY, contentBottom - bottomSheetHeight - fabHeight / 2.0);

    return new Offset(fabX, fabY);
  }
}
