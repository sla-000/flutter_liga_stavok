import 'package:flutter/material.dart';

class MatchClock extends StatelessWidget {
  const MatchClock({
    Key key,
    this.matchTime,
  }) : super(key: key);

  final String matchTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      matchTime ?? ' ',
      style: Theme.of(context).textTheme.headline3,
      overflow: TextOverflow.fade,
    );
  }
}
