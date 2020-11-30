import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/common/team_profile/team_profile.dart';

const double _kWidgetHeight = 30;
const double _kWidgetWidth = 30;

class TeamDress extends StatelessWidget {
  const TeamDress({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _kWidgetHeight,
      width: _kWidgetWidth,
      child: Center(
        child: FittedBox(
          fit: BoxFit.cover,
          child: _TeamDress(home: home),
        ),
      ),
    );
  }
}

class _TeamDress extends StatelessWidget {
  const _TeamDress({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return home ? const HomeTeamJersey() : const AwayTeamJersey();
  }
}
