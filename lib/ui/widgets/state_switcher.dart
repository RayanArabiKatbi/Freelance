 
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

class StateSwitcher extends StatelessWidget {
  StateSwitcher({
    this.currentItem,
    this.itemCount,
    this.color = kRightColor,
  }) : super();

  final int currentItem;
  final int itemCount;
  final Color color;
  static const double _kDotSize = 8.0;
  static const double _kDotSpacing = 12.0;

  Widget _buildDot(int index) {
    final _color = index == currentItem ? color : Colors.transparent;
    return Container(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          color: _color,
          type: MaterialType.circle,
          child: Container(
            width: _kDotSize,
            height: _kDotSize,
            decoration: ShapeDecoration(
              shape: CircleBorder(side: BorderSide(color: color)),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    final rtl = Directionality.of(context) == TextDirection.rtl;
    var children = List<Widget>.generate(itemCount, _buildDot);
    if (rtl) {
      children = children.reversed.toList();
    }
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
