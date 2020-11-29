import 'package:flutter_liga_stavok/logic/team_profile/team_profile_bloc.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('AwayTeamBloc');

class AwayTeamBloc extends TeamProfileBloc {
  AwayTeamBloc() : super(home: false);
}
