import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/combined_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/theme/durations.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_time/match_clock.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_time/match_period.dart';

const double _kWidgetWidth = 76;

class MatchTime extends StatelessWidget {
  const MatchTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SportEventStatus>(
      stream: getIt.get<CombinedResultsBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
        if (snapshot.hasError) {
          return const _MatchTime();
        }

        if (snapshot.hasData) {
          String matchTime;
          int period;
          bool show = false;

          if (snapshot.data.status == 'live') {
            matchTime = snapshot.data.clock?.matchTime;
            period = snapshot.data.period;
            show = true;
          }

          return _MatchTime(
            show: show,
            matchTime: matchTime,
            period: period,
          );
        }

        return const _MatchTime();
      },
    );

    return _MatchTime();
  }
}

class _MatchTime extends StatelessWidget {
  const _MatchTime({
    Key key,
    this.show = false,
    this.matchTime,
    this.period,
  }) : super(key: key);

  final bool show;
  final String matchTime;
  final int period;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kMediumDuration,
      width: show ? _kWidgetWidth : 0,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: ClockAndPeriod(
          matchTime: matchTime,
          period: period,
        ),
      ),
    );
  }
}

class ClockAndPeriod extends StatelessWidget {
  const ClockAndPeriod({
    Key key,
    @required this.matchTime,
    @required this.period,
  }) : super(key: key);

  final String matchTime;
  final int period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MatchClock(matchTime: matchTime),
          const SizedBox(height: 4),
          MatchPeriod(period: period),
        ],
      ),
    );
  }
}
