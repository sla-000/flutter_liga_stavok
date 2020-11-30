import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/logic/team_profile/select_team_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;

class TeamName extends StatelessWidget {
  const TeamName({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: StreamBuilder<team_profile.Data>(
        stream: getTeamProfileBloc(home: home).stream,
        builder:
            (BuildContext context, AsyncSnapshot<team_profile.Data> snapshot) {
          if (snapshot.hasError) {
            return const Center();
          }

          if (snapshot.hasData) {
            final String name = snapshot.data.team?.name ?? '';

            return Text(
              '$name',
              style: Theme.of(context).textTheme.headline3,
              overflow: TextOverflow.fade,
            );
          }

          return const Center();
        },
      ),
    );
  }
}
