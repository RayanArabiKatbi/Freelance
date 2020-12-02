import 'package:flutter/material.dart';

class RatingBarStatic extends StatelessWidget {
  final Color fillColor;
  final double rate;
  final int max;
  final double height;

  RatingBarStatic(
      {Key key,
      this.fillColor = Colors.amber,
      @required this.rate,
      this.max = 5,
      this.height})
      : super(key: key) {
    assert(rate <= max);
  }

  @override
  Widget build(BuildContext context) {
    final fullStars = rate.floor();
    final remainingStars = max - rate.ceil();
    final halfStar = fullStars < rate;
    return Container(
      height: height,
      child: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ...List.generate(
                fullStars,
                (index) => Icon(
                      Icons.star,
                      color: fillColor,
                    )).toList(),
            if (halfStar)
              Icon(
                Icons.star_half,
                color: fillColor,
              ),
            ...List.generate(
                remainingStars,
                (index) => Icon(
                      Icons.star_border,
                      color: fillColor,
                    )).toList()
          ],
        ),
      ),
    );
  }
}
