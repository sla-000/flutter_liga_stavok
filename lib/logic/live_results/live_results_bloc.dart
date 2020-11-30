import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/logic/timer/timer_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/live_results.dart'
    as live_results;
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

final Logger _log = Logger('LiveResultsBloc');

class LiveResultsBloc extends SubscribeBloc<SportEvent, Result> {
  @override
  StreamSubscription<SportEvent> subscribe() {
    return CombineLatestStream.combine2<SportEvent, void, SportEvent>(
      getIt.get<SelectedEventBloc>().stream,
      getIt.get<TimerBloc>().stream,
      (SportEvent sportEvent, _) => sportEvent,
    ).listen((SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if ((sportEvent?.competitors?.length ?? 0) != 2) {
        clear();
        return;
      }

      try {
        // addError(LoadingAppBusy());

        final live_results.Data data = await getLiveResults();
        if (data?.results?.isEmpty ?? true) {
          clear();
          return;
        }

        final Result result = data.results.firstWhere(
          (Result result) => result.sportEvent?.id == sportEvent.id,
          orElse: () => null,
        );

        if (result == null) {
          clear();
          return;
        }

        add(result);
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
