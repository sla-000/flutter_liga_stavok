import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/logic/match_summary/match_summary_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

final Logger _log = Logger('CombinedResultsBloc');

class CombinedResultsBloc
    extends SubscribeBloc<SportEventStatus, SportEventStatus> {
  @override
  StreamSubscription<SportEventStatus> subscribe() {
    return MergeStream<SportEventStatus>([
      getIt.get<LiveResultsBloc>().stream,
      getIt.get<MatchSummaryBloc>().stream,
    ]).listen((SportEventStatus someEventStatus) async {
      _log.finest(() => 'subscribe: someEventStatus=$someEventStatus');
      if (someEventStatus?.homeScore == null ||
          someEventStatus?.awayScore == null) {
        return;
      }

      add(someEventStatus);
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: error=$error');
    });
  }
}
