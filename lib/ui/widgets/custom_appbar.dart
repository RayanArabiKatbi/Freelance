/*
* This page created by Moustafa Essam.
*
* the documentation will be available soon.
* */
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key key,
    @required String title,
    @required Function onBack,
    Widget trailing,
  })  : _title = title,
        _onBack = onBack,
        _trailing = trailing,
        super(key: key);

  final String _title;
  final Function _onBack;
  final Widget _trailing;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top +
        ScreenHelper.screenHeight(context, 18.0);
    final bottomPadding = ScreenHelper.screenHeight(context, -10.0);
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              kLeftColor,
              kMiddleColor,
              kRightColor,
            ],
          ),
        ),
        padding: EdgeInsets.only(
              top: topPadding,
              bottom: bottomPadding,
            ) +
            const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: _onBack != null
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      alignment: Alignment.centerRight,
                      child: InkResponse(
                        onTap: _onBack,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ),
            SizedBox(
              width: kInPadding,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 2),
              child: Text(
                _title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              width: kInPadding,
            ),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  //maxWidth: MediaQuery.of(context).size.width / 3,
                  maxHeight: AppBar().preferredSize.height,
                ),
                child: _trailing != null
                    ? Container(
                        alignment: Alignment.centerLeft,
                        child: _trailing,
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
