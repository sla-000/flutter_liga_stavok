import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_time/match_clock.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_time/match_period.dart';

const double _kWidgetWidth = 64;

class MatchTime extends StatelessWidget {
  const MatchTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _kWidgetWidth,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            MatchClock(),
            SizedBox(height: 4),
            MatchPeriod(),
          ],
        ),
      ),
    );
  }
}
