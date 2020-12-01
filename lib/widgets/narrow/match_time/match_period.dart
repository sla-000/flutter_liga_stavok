import 'package:flutter/material.dart';

class MatchPeriod extends StatelessWidget {
  const MatchPeriod({
    Key key,
    this.period,
  }) : super(key: key);

  final int period;

  @override
  Widget build(BuildContext context) {
    if (period == null) {
      return Text(
        ' ',
        style: Theme.of(context).textTheme.headline4,
        overflow: TextOverflow.fade,
      );
    }

    return Text(
      '$period' + '''-й тайм''',
      style: Theme.of(context).textTheme.headline4,
      overflow: TextOverflow.fade,
    );
  }
}
