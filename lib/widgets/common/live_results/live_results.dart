import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/widgets/common/live_results/live_result.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('LiveResults');

class LiveResults extends StatelessWidget {
  const LiveResults({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Result>(
      stream: getIt.get<LiveResultsBloc>().stream,
      builder: (BuildContext context, AsyncSnapshot<Result> snapshot) {
        if (snapshot.hasError) {
          return const LiveResult();
        }

        if (snapshot.hasData) {
          return LiveResult(
            key: ValueKey<int>(snapshot.data.hashCode),
            result: snapshot.data,
          );
        }

        return const LiveResult();
      },
    );
  }
}
