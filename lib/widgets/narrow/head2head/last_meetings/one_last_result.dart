import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:logging/logging.dart';

final Logger _log = Logger('OneLastResult');

class OneLastResult extends StatelessWidget {
  const OneLastResult({
    Key key,
    this.result,
  }) : super(key: key);

  final head_2_head.Result result;

  @override
  Widget build(BuildContext context) {
    if (result.sportEvent == null ||
        result.sportEventStatus == null ||
        result.sportEvent.competitors == null) {
      return const Text('No data');
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('scheduled: ${result.sportEvent.scheduled.toLocal()}'),
        if (result.sportEvent.competitors.length == 2)
          Text('teams: ${result.sportEvent.competitors[0].name}'
              ' (${result.sportEvent.competitors[0].abbreviation})'
              ' :'
              ' (${result.sportEvent.competitors[1].abbreviation})'
              ' ${result.sportEvent.competitors[1].name}'),
        Text('season: ${result.sportEvent.season.name}'),
        Text('score: ${result.sportEventStatus.homeScore}'
            ' :'
            ' ${result.sportEventStatus.awayScore}'),
        if (result.sportEventStatus.periodScores.length >= 1)
          Text('period 1: ${result.sportEventStatus.periodScores[0].homeScore}'
              ' :'
              ' ${result.sportEventStatus.periodScores[0].awayScore}'),
        if (result.sportEventStatus.periodScores.length >= 2)
          Text('period 2: ${result.sportEventStatus.periodScores[1].homeScore}'
              ' :'
              ' ${result.sportEventStatus.periodScores[1].awayScore}'),
      ],
    );
  }
}
