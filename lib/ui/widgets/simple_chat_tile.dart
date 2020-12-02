 import 'package:flutter/material.dart';

import '../../constants.dart';

class SimpleChatTile extends StatelessWidget {
  const SimpleChatTile({
    Key key,
    @required this.userName,
    @required this.message,
    @required this.elapsedTime,
    @required this.image,
  }) : super(key: key);

  final String userName;
  final String message;
  final String elapsedTime;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kLightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      elevation: 0.0,
      child: ListTile(
        trailing: Text(
          elapsedTime,
          style: Theme.of(context).textTheme.subhead,
        ),
        title: Text(
          userName,
          style: Theme.of(context).textTheme.subtitle,
        ),
        subtitle: Text(
          message,
          style: Theme.of(context).textTheme.subhead,
        ),
        leading: ImageIcon(
          AssetImage(image),
          color: kMiddleColor,
          size: 45,
        ),
      ),
    );
  }
}
