import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/common/team_profile/team_profile.dart';

const double _kWidgetHeight = 36;
const double _kWidgetWidth = 36;

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
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
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
