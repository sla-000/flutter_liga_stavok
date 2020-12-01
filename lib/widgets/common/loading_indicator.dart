import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/theme/durations.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SportEventStatus>(
      stream: getIt.get<LiveResultsBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<SportEventStatus> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return AnimatedSwitcher(
              duration: kSmallDuration,
              child: Container(
                height: 12,
                width: 12,
                child: const CircularProgressIndicator(),
              ),
            );
          }

          return AnimatedSwitcher(
            duration: kSmallDuration,
            child: Icon(
              Icons.warning,
              color: Colors.red[400],
              size: 16,
            ),
          );
        }

        return const AnimatedSwitcher(
          duration: kSmallDuration,
          child: Center(),
        );
      },
    );
  }
}
