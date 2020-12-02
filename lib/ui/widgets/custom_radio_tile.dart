//Created by Moustafa Essam

import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomRadioTile extends StatelessWidget {
  final String title;
  final int value;
  final int selectedValue;
  final Function(int) onChange;

  const CustomRadioTile(
      {Key key, this.title, this.value, this.selectedValue, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () => onChange(value),
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: kInPadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio(
                activeColor: kRightColor,
                value: value,
                groupValue: selectedValue,
                onChanged: onChange,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subhead,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
