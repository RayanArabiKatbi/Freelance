
import 'dart:developer';

import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../helpers/screen_helper.dart';

class HeaderTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color color;
  final IconData icon;
  final bool expanded;
  final Widget firstChild;
  final List<Widget> _children = [];
  final EdgeInsetsGeometry itemsPadding;
  final Function onTileTapped;
  final Function onIconTapped;

  HeaderTile(
      {this.title,
      this.backgroundColor = kDarkHeaderBackground,
      this.color = kMiddleColor,
      List<HeaderTileRow> children = const [],
      this.icon,
      this.expanded = false,
      this.firstChild,
      this.itemsPadding = const EdgeInsets.all(0),
      this.onTileTapped,
      this.onIconTapped}) {
    if (expanded && icon == null) {
      log("HeaderTile can't be expanded without an icon", error: this);
    }
    if (firstChild != null) {
      _children.add(firstChild);
    }
    if (children.isNotEmpty) {
      _children.add(Padding(
        padding: itemsPadding,
        child: children.first,
      ));
    }
    children.skip(1).forEach((child) {
      _children.add(Divider(
        height: 1,
        thickness: 1,
      ));
      _children.add(Padding(
        padding: itemsPadding,
        child: child,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InkWell(
          onTap: onTileTapped,
          child: Ink(
            color: backgroundColor,
            padding: EdgeInsets.symmetric(
                horizontal: ScreenHelper.screenWidth(context, 20.0),
                vertical: ScreenHelper.screenHeight(context, 10)),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: expanded
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline
                        .copyWith(
                      color: color,
                    ),
                  ),
                  if (icon != null) ...[
                    SizedBox(
                      width: 10.0,
                    ),
                    InkResponse(
                      onTap: onIconTapped,
                      child: Icon(
                        icon,
                        color: color,
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
        ),
        ..._children,
      ],
    );
  }
}
