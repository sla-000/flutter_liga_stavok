import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/combined_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';

class TeamScore extends StatelessWidget {
  const TeamScore({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: StreamBuilder<SportEventStatus>(
        stream: getIt.get<CombinedResultsBloc>().stream,
        builder:
            (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
          if (snapshot.hasError) {
            return const Score();
          }

          if (snapshot.hasData) {
            final SportEventStatus status = snapshot.data;

            return Score(
              period1: _getPeriod1(status),
              period2: _getPeriod2(status),
              score: _getScore(status),
            );
          }

          return const Score();
        },
      ),
    );
  }

  String _getScore(SportEventStatus status) {
    return home ? status.homeScore?.toString() : status.awayScore?.toString();
  }

  String _getPeriod1(SportEventStatus status) {
    if ((status.periodScores?.length ?? 0) < 1) {
      return null;
    }

    return home
        ? status.periodScores[0].homeScore?.toString()
        : status.periodScores[0].awayScore?.toString();
  }

  String _getPeriod2(SportEventStatus status) {
    if ((status.periodScores?.length ?? 0) < 2) {
      return null;
    }

    return home
        ? status.periodScores[1].homeScore?.toString()
        : status.periodScores[1].awayScore?.toString();
  }
}

class Score extends StatelessWidget {
  const Score({
    Key key,
    this.period1,
    this.period2,
    this.score,
  }) : super(key: key);

  final String period1;
  final String period2;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (period1 != null)
          Container(
            width: 24,
            child: Text(
              period1,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.right,
            ),
          ),
        if (period2 != null)
          Container(
            width: 24,
            child: Text(
              period2,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.right,
            ),
          ),
        if (score != null)
          Container(
            width: 26,
            child: Text(
              score,
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.right,
            ),
          ),
      ],
    );
  }
}
