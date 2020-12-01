import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/combined_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';

class MatchClock extends StatelessWidget {
  const MatchClock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SportEventStatus>(
      stream: getIt.get<CombinedResultsBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
        if (snapshot.hasError) {
          return const _MatchClock();
        }

        if (snapshot.hasData) {
          String matchTime;

          if (snapshot.data.status == 'live') {
            matchTime = snapshot.data.clock?.matchTime;
          }

          return _MatchClock(matchTime: matchTime);
        }

        return const _MatchClock();
      },
    );
  }
}

class _MatchClock extends StatelessWidget {
  const _MatchClock({
    Key key,
    this.matchTime,
  }) : super(key: key);

  final String matchTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      matchTime ?? ' ',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
