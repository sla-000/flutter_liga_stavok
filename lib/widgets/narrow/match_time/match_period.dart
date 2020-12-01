import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/combined_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';

class MatchPeriod extends StatelessWidget {
  const MatchPeriod({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SportEventStatus>(
      stream: getIt.get<CombinedResultsBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
        if (snapshot.hasError) {
          return const _MatchPeriod();
        }

        if (snapshot.hasData) {
          int period;

          if (snapshot.data.status == 'live') {
            period = snapshot.data.period;
          }

          return _MatchPeriod(period: period);
        }

        return const _MatchPeriod();
      },
    );
  }
}

class _MatchPeriod extends StatelessWidget {
  const _MatchPeriod({
    Key key,
    this.period,
  }) : super(key: key);

  final int period;

  @override
  Widget build(BuildContext context) {
    if (period == null) {
      return Text(
        ' ',
        style: Theme.of(context).textTheme.headline4,
      );
    }

    return Text(
      '$period' + '''-й тайм''',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
