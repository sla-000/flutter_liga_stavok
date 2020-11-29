import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/team_profile/away_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/home_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/team_profile_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/common/busy_widget.dart';
import 'package:flutter_liga_stavok/widgets/common/fail_widget.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_profile/jersey.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('TeamProfile');

class TeamProfileHome extends StatelessWidget {
  const TeamProfileHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TeamProfile(
      home: true,
      bloc: getIt.get<HomeTeamBloc>(),
    );
  }
}

class TeamProfileAway extends StatelessWidget {
  const TeamProfileAway({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TeamProfile(
      home: false,
      bloc: getIt.get<AwayTeamBloc>(),
    );
  }
}

class TeamProfile extends StatelessWidget {
  const TeamProfile({
    Key key,
    @required this.home,
    @required this.bloc,
  }) : super(key: key);

  final TeamProfileBloc bloc;
  final bool home;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<team_profile.Data>(
      stream: bloc.stream,
      builder:
          (BuildContext context, AsyncSnapshot<team_profile.Data> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return const BusyWidget(child: _TeamProfile());
          }

          return FailWidget(
            error: snapshot.error.toString(),
            child: const _TeamProfile(),
            onTap: () {
              _log.info(() => 'build: onTap: error=${snapshot.error}');
              bloc.resubscribe();
            },
          );
        }

        if (snapshot.hasData) {
          _log.finest(() => 'build: data=${snapshot.data}');
          return _TeamProfile(
            home: home,
            key: ValueKey<int>(snapshot.data.hashCode),
            data: snapshot.data,
          );
        }

        return const _TeamProfile();
      },
    );
  }
}

class _TeamProfile extends StatelessWidget {
  const _TeamProfile({
    Key key,
    this.home,
    this.data,
  }) : super(key: key);

  final bool home;
  final team_profile.Data data;

  @override
  Widget build(BuildContext context) {
    if (home == null) {
      return const Center();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if ((data?.jerseys?.length ?? 0) >= 2)
          Jersey(jersey: home ? data.jerseys[0] : data.jerseys[1]),
      ],
    );
  }
}
