import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/logic/match_summary/match_summary_bloc.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

final Logger _log = Logger('CombinedResultsBloc');

class _SportEventStatus {
  _SportEventStatus({
    this.clear = false,
    this.sportEventStatus,
  });

  bool clear;
  SportEventStatus sportEventStatus;

  @override
  String toString() {
    return '_SportEventStatus{clear: $clear'
        ', sportEventStatus: $sportEventStatus}';
  }
}

class CombinedResultsBloc
    extends SubscribeBloc<_SportEventStatus, SportEventStatus> {
  @override
  StreamSubscription<_SportEventStatus> subscribe() {
    return CombineLatestStream.combine2<SportEventStatus, SportEvent,
                _SportEventStatus>(
            MergeStream<SportEventStatus>([
              getIt.get<LiveResultsBloc>().stream,
              getIt.get<MatchSummaryBloc>().stream,
            ]),
            getIt.get<SelectedEventBloc>().stream,
            _combine)
        .listen((_SportEventStatus _sportEventStatus) async {
      _log.finest(() => 'subscribe: _sportEventStatus=$_sportEventStatus');
      if (_sportEventStatus?.clear ?? false) {
        clear();
        return;
      }

      if (_sportEventStatus?.sportEventStatus?.homeScore == null ||
          _sportEventStatus?.sportEventStatus?.awayScore == null) {
        return;
      }

      add(_sportEventStatus.sportEventStatus);
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: error=$error');
    });
  }

  _SportEventStatus _combine(
      SportEventStatus sportEventStatus, SportEvent sportEvent) {
    _log.finest(() =>
        '_combine: sportEventStatus=$sportEventStatus, sportEvent=$sportEvent');
    if (sportEvent?.id?.isEmpty ?? true) {
      return _SportEventStatus(clear: true);
    }
    return _SportEventStatus(sportEventStatus: sportEventStatus);
  }
}
