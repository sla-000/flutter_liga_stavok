import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/theme/durations.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';

const double _kWidgetWidth = 32;
const double _kWidgetHeight = 16;

class LiveSign extends StatefulWidget {
  const LiveSign({
    Key key,
  }) : super(key: key);

  @override
  _LiveSignState createState() => _LiveSignState();
}

class _LiveSignState extends State<LiveSign> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SportEventStatus>(
      stream: getIt.get<LiveResultsBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return LiveText(show: show);
          }

          return const LiveText();
        }

        if (snapshot.hasData) {
          show = (snapshot.data?.status ?? '') == 'live';

          return LiveText(show: show);
        }
        show = false;

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
