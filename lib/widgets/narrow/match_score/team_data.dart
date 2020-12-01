import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_abbreviation.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_dress.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_name.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_score.dart';

class TeamData extends StatelessWidget {
  const TeamData({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TeamDress(home: home),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TeamAbbreviation(home: home),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TeamName(home: home),
        )),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TeamScore(home: home),
        ),
      ],
    );
  }
}
