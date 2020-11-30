import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score/team_dress.dart';

const double _kWidgetHeight = 60;

class TeamData extends StatelessWidget {
  const TeamData({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _kWidgetHeight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TeamDress(home: home),
        ],
      ),
    );
  }
}
