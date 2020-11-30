import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/team_profile/away_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/home_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/team_profile_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:flutter_liga_stavok/widgets/common/team_profile/jersey.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('TeamProfile');

class HomeTeamJersey extends StatelessWidget {
  const HomeTeamJersey({
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

class AwayTeamJersey extends StatelessWidget {
  const AwayTeamJersey({
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
          return const _TeamJersey();
        }

        if (snapshot.hasData) {
          return _TeamJersey(
            home: home,
            key: ValueKey<int>(snapshot.data.hashCode),
            data: snapshot.data,
          );
        }

        return const _TeamJersey();
      },
    );
  }
}

class _TeamJersey extends StatelessWidget {
  const _TeamJersey({
    Key key,
    this.home,
    this.data,
  }) : super(key: key);

  final bool home;
  final team_profile.Data data;

  @override
  Widget build(BuildContext context) {
    if (home == null || data?.jerseys == null) {
      return const Center();
    }

    final team_profile.Jersey jersey = _findJersey();

    return JerseyLook(jersey: jersey);
  }

  team_profile.Jersey _findJersey() {
    if (data.jerseys.isEmpty ?? true) {
      return null;
    }

    if (home) {
      final team_profile.Jersey rezJersey = data.jerseys.firstWhere(
          (team_profile.Jersey _jersey) => _jersey?.type == 'home',
          orElse: () => null);

      if (rezJersey != null) {
        return rezJersey;
      }

      return data.jerseys.firstWhere(
          (team_profile.Jersey _jersey) => _jersey?.type == 'third',
          orElse: () => null);
    } else {
      final team_profile.Jersey rezJersey = data.jerseys.firstWhere(
          (team_profile.Jersey _jersey) => _jersey?.type == 'away',
          orElse: () => null);

      if (rezJersey != null) {
        return rezJersey;
      }

      return data.jerseys.firstWhere(
          (team_profile.Jersey _jersey) => _jersey?.type == 'third',
          orElse: () => null);
    }

    return null;
  }
}
