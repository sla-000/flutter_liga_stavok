import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_abbreviation.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_dress.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_name.dart';

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
        TeamDress(home: home),
        const SizedBox(width: 8),
        TeamAbbreviation(home: home),
        const SizedBox(width: 8),
        Expanded(child: TeamName(home: home)),
        const SizedBox(width: 8),
        TeamScore(home: home),
      ],
    );
  }
}

class TeamScore extends StatelessWidget {
  const TeamScore({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
