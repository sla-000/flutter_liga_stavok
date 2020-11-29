import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as daily_schedule;
import 'package:flutter_liga_stavok/rest/models/live_results.dart'
    as live_results;
import 'package:logging/logging.dart';

final Logger _log = Logger('LiveResultsBloc');

class LiveResultsBloc
    extends SubscribeBloc<daily_schedule.SportEvent, live_results.Result> {
  @override
  StreamSubscription<daily_schedule.SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (daily_schedule.SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if ((sportEvent?.competitors?.length ?? 0) != 2) {
        clear();
        return;
      }

      try {
        addError(LoadingAppBusy());

        final live_results.Data data = await getLiveResults();
        if (data == null || (data.results?.isEmpty ?? true)) {
          clear();
          return;
        }

        final live_results.Result result = data.results.firstWhere(
          (live_results.Result result) =>
              result.sportEvent?.id == sportEvent.id,
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