import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/logic/team_profile/select_team_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:flutter_liga_stavok/theme/durations.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';

class TeamName extends StatefulWidget {
  const TeamName({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  _TeamNameState createState() => _TeamNameState();
}

class _TeamNameState extends State<TeamName> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: StreamBuilder<team_profile.Data>(
        stream: getTeamProfileBloc(home: widget.home).stream,
        builder:
            (BuildContext context, AsyncSnapshot<team_profile.Data> snapshot) {
          if (snapshot.hasError) {
            if (snapshot.error is AppBusy) {
              return AnimatedSwitcher(
                duration: kSmallDuration,
                child: Text(
                  name,
                  key: ValueKey<String>(name),
                  style: Theme.of(context).textTheme.headline3,
                  overflow: TextOverflow.fade,
                ),
              );
            }

            return const AnimatedSwitcher(
              duration: kSmallDuration,
              child: Center(),
            );
          }

          if (snapshot.hasData) {
            name = snapshot.data.team?.name ?? '';

            return AnimatedSwitcher(
              duration: kSmallDuration,
              child: Text(
                name,
                key: ValueKey<String>(name),
                style: Theme.of(context).textTheme.headline3,
                overflow: TextOverflow.fade,
              ),
            );
          }

          name = '';

          return const AnimatedSwitcher(
            duration: kSmallDuration,
            child: Center(),
          );
        },
      ),
    );
  }
}
