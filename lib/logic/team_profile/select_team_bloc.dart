import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/team_profile/away_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/home_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/team_profile_bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

final Logger _log = Logger('AwayTeamBloc');

TeamProfileBloc getTeamProfileBloc({
  @required bool home,
}) {
  return home ? getIt.get<HomeTeamBloc>() : getIt.get<AwayTeamBloc>();
}
