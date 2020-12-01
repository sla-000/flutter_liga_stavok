import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/live_sign.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_data.dart';

class MatchScore extends StatelessWidget {
  const MatchScore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: LiveSign(),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              TeamData(home: true),
              TeamData(home: false),
            ],
          ),
        ),
      ],
    );
  }
}
