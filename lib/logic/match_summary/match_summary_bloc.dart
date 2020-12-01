import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/match_summary.dart'
    as match_summary;
import 'package:logging/logging.dart';

final Logger _log = Logger('MatchSummaryBloc');

class MatchSummaryBloc extends SubscribeBloc<SportEvent, SportEventStatus> {
  @override
  StreamSubscription<SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if (sportEvent?.id?.isEmpty ?? true) {
        clear();
        return;
      }

      try {
        addError(LoadingAppBusy());

        final match_summary.Data data = await getMatchSummary(sportEvent.id);
        if (data?.sportEventStatus == null) {
          _log.finest(() => 'subscribe: No data');
          clear();
          return;
        }

        add(data?.sportEventStatus);
      } on Exception catch (error) {
        _log.warning(() => 'subscribe: error=$error');
        addError(error);
      }
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: error=$error');
      clear();
    });
  }
}
