 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DropDownList extends StatelessWidget {
  final String value;
  final String hint;
  final Function(String) onChanged;
  final List<String> items;
  final Color textColor = Colors.grey;

  const DropDownList(
      {Key key, this.value, this.onChanged, this.items = const [], this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: kMiddleColor,
      ),
      iconSize: 24,
      elevation: 16,
      isExpanded: true,
      hint: hint != null
          ? Text(
              hint,
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(color: Colors.grey),
            )
          : null,
      underline: Container(
        height: 1,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: onChanged,
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style:
                Theme.of(context).textTheme.headline.copyWith(color: textColor),
          ),
        );
      }).toList(),
    );
  }
}
