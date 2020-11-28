import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as daily_schedule;
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:logging/logging.dart';

final Logger _log = Logger('WinProbabilityBloc');

class WinProbabilityBloc extends SubscribeBloc<daily_schedule.SportEvent,
    match_probabilities.Probabilities> {
  @override
  StreamSubscription<daily_schedule.SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (daily_schedule.SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if (sportEvent?.competitors?.isEmpty ?? true) {
        clear();
        return;
      }

      addError(LoadingAppBusy());

      final match_probabilities.Data data =
          await getMatchProbabilities(sportEvent.id);

      add(data.probabilities);
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: error=$error');
      clear();
    });
  }
}