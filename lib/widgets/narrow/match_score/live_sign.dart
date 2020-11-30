import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/theme/durations.dart';

const double _kWidgetWidth = 32;
const double _kWidgetHeight = 16;

class LiveSign extends StatelessWidget {
  const LiveSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Result>(
      stream: getIt.get<LiveResultsBloc>().stream,
      builder: (BuildContext context, AsyncSnapshot<Result> snapshot) {
        if (snapshot.hasError) {
          return const LiveText();
        }

        if (snapshot.hasData) {
          final bool show =
              (snapshot.data.sportEventStatus?.status ?? '') == 'live';

          return LiveText(show: show);
        }

        return const LiveText();
      },
    );
  }
}

class LiveText extends StatelessWidget {
  const LiveText({
    Key key,
    this.show = false,
  }) : super(key: key);

  final bool show;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kSmallDuration,
      width: show ? _kWidgetWidth : 0,
      child: Center(
        key: ValueKey<bool>(show),
        child: Container(
          color: Colors.orange,
          height: _kWidgetHeight,
          child: Center(
            child: Text(
              'LIVE',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ),
    );
  }
}
