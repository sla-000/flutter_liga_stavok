import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/logic/timer/timer_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

final Logger _log = Logger('WinProbabilityBloc');

class WinProbabilityBloc
    extends SubscribeBloc<SportEvent, match_probabilities.Probabilities> {
  @override
  StreamSubscription<SportEvent> subscribe() {
    return CombineLatestStream.combine2<SportEvent, void, SportEvent>(
      getIt.get<SelectedEventBloc>().stream,
      getIt.get<TimerBloc>().stream,
      (SportEvent sportEvent, _) => sportEvent,
    ).listen((SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if (sportEvent?.competitors?.isEmpty ?? true) {
        clear();
        return;
      }

      try {
        final match_probabilities.Data data =
            await getMatchProbabilities(sportEvent.id);
        if (data == null) {
          _log.finest(() => 'subscribe: No data');
          clear();
          return;
        }

        add(data.probabilities);
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
