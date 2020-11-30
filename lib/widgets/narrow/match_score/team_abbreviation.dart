import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/logic/team_profile/select_team_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;

const double _kWidgetWidth = 40;

class TeamAbbreviation extends StatelessWidget {
  const TeamAbbreviation({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _kWidgetWidth,
      child: Center(
        child: StreamBuilder<team_profile.Data>(
          stream: getTeamProfileBloc(home: home).stream,
          builder: (BuildContext context,
              AsyncSnapshot<team_profile.Data> snapshot) {
            if (snapshot.hasError) {
              return const Center();
            }

            if (snapshot.hasData) {
              final String abbreviation =
                  snapshot.data.team?.abbreviation ?? '';

              return Text(
                '$abbreviation',
                style: Theme.of(context).textTheme.headline2,
              );
            }

            return const Center();
          },
        ),
      ),
    );
  }
}
