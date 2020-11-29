import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as dailySchedule;
import 'package:flutter_liga_stavok/rest/models/live_results.dart'
    as live_results;
import 'package:logging/logging.dart';

final Logger _log = Logger('LiveResults');

class LiveResult extends StatelessWidget {
  const LiveResult({
    Key key,
    this.result,
  }) : super(key: key);

  final live_results.Result result;

  @override
  Widget build(BuildContext context) {
    String home;
    String away;

    final List<live_results.Competitor> liveCompetitors =
        result?.sportEvent?.competitors;

    final List<dailySchedule.Competitor> selectedCompetitors =
        getIt.get<SelectedEventBloc>().value?.competitors;

    if ((liveCompetitors?.length ?? 0) == 2) {
      home = '${liveCompetitors[0].name}'
          ' (${liveCompetitors[0].abbreviation})';
      away = '(${liveCompetitors[1].abbreviation})'
          ' ${liveCompetitors[1].name}';
    } else if ((selectedCompetitors?.length ?? 0) == 2) {
      home = '${selectedCompetitors[0].name}'
          ' (${selectedCompetitors[0].abbreviation})';
      away = '(${selectedCompetitors[1].abbreviation})'
          ' ${selectedCompetitors[1].name}';
    } else {
      home = '';
      away = '';
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('teams: $home : $away'),
        Text('score: ${result?.sportEventStatus?.homeScore}'
            ' :'
            ' ${result?.sportEventStatus?.awayScore}'),
        Text('period: ${result?.sportEventStatus?.period}'),
        Text('matchTime: ${result?.sportEventStatus?.clock?.matchTime}'),
        if ((result?.sportEventStatus?.periodScores?.length ?? 0) >= 1)
          Text('period 1:'
              ' ${result.sportEventStatus.periodScores[0].homeScore}'
              ' :'
              ' ${result.sportEventStatus.periodScores[0].awayScore}'),
        if ((result?.sportEventStatus?.periodScores?.length ?? 0) >= 2)
          Text('period 2:'
              ' ${result.sportEventStatus.periodScores[1].homeScore}'
              ' :'
              ' ${result.sportEventStatus.periodScores[1].awayScore}'),
        Text('status: ${result?.sportEventStatus?.status}'),
        Text('matchStatus: ${result?.sportEventStatus?.matchStatus}'),
      ],
    );
  }
}
