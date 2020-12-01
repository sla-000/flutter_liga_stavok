import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('LiveResults');

class LiveResult extends StatelessWidget {
  const LiveResult({
    Key key,
    this.sportEventStatus,
  }) : super(key: key);

  final SportEventStatus sportEventStatus;

  @override
  Widget build(BuildContext context) {
    String home;
    String away;

    final List<Competitor> competitors =
        getIt.get<SelectedEventBloc>().value?.competitors;

    if ((competitors?.length ?? 0) == 2) {
      home = '${competitors[0].name}'
          ' (${competitors[0].abbreviation})';
      away = '(${competitors[1].abbreviation})'
          ' ${competitors[1].name}';
    } else if ((competitors?.length ?? 0) == 2) {
      home = '${competitors[0].name}'
          ' (${competitors[0].abbreviation})';
      away = '(${competitors[1].abbreviation})'
          ' ${competitors[1].name}';
    } else {
      home = '';
      away = '';
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('teams: $home : $away'),
        Text('score: ${sportEventStatus?.homeScore}'
            ' :'
            ' ${sportEventStatus?.awayScore}'),
        Text('period: ${sportEventStatus?.period}'),
        Text('matchTime: ${sportEventStatus?.clock?.matchTime}'),
        if ((sportEventStatus?.periodScores?.length ?? 0) >= 1)
          Text('period 1:'
              ' ${sportEventStatus.periodScores[0].homeScore}'
              ' :'
              ' ${sportEventStatus.periodScores[0].awayScore}'),
        if ((sportEventStatus?.periodScores?.length ?? 0) >= 2)
          Text('period 2:'
              ' ${sportEventStatus.periodScores[1].homeScore}'
              ' :'
              ' ${sportEventStatus.periodScores[1].awayScore}'),
        Text('status: ${sportEventStatus?.status}'),
        Text('matchStatus: ${sportEventStatus?.matchStatus}'),
      ],
    );
  }
}
