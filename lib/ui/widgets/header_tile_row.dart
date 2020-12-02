import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../helpers/screen_helper.dart';

class HeaderTileRow extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final ImageProvider iconImage;
  final IconData trailingIcon;
  final Color iconTint;
  final bool external;
  final Function onRowTap;
  final Function onIconTap;

  HeaderTileRow({
    @required this.title,
    this.iconData,
    this.iconImage,
    this.external = false,
    this.onRowTap,
    this.trailingIcon = Icons.navigate_next,
    this.iconTint = kDarkGrey,
    this.subTitle,
    this.onIconTap,
  }) {
    if (iconData != null && iconImage != null) {
      log("iconData and iconImage can't both be assigned");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onRowTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: ScreenHelper.screenHeight(context, 8),
              horizontal: ScreenHelper.screenWidth(context, 15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        if (iconData != null) ...[
                          Icon(iconData, color: kDarkGrey),
                          SizedBox(
                            width: ScreenHelper.screenWidth(context, 10.0),
                          ),
                        ],
                        if (iconImage != null) ...[
                          CircleAvatar(
                            backgroundImage: iconImage,
                            maxRadius: ScreenHelper.screenHeight(context, 12),
                          ),
                          SizedBox(
                            width: ScreenHelper.screenWidth(context, 10.0),
                          ),
                        ],
                        Text(title.trim(),
                            style:
                                Theme.of(context).textTheme.headline.copyWith(
                                      color: Colors.grey,
                                    ),
                            textDirection: TextDirection.rtl),
                      ],
                    ),
                    if (subTitle != null) ...[
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subTitle,
                        style: Theme.of(context).textTheme.display1,
                      )
                    ],
                  ],
                ),
              ),
              if (!external)
                InkResponse(
                    onTap: onIconTap,
                    child: Icon(trailingIcon, color: iconTint)),
            ],
          ),
        ),
      ),
    );
  }
}
