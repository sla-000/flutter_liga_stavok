import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as daily_schedule;
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:logging/logging.dart';

final Logger _log = Logger('Head2HeadBloc');

class Head2HeadBloc
    extends SubscribeBloc<daily_schedule.SportEvent, head_2_head.Data> {
  @override
  StreamSubscription<daily_schedule.SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (daily_schedule.SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if ((sportEvent?.competitors?.length ?? 0) != 2) {
        clear();
        return;
      }

      addError(LoadingAppBusy());

      final head_2_head.Data data = await getHead2Head(
          sportEvent.competitors[0].id, sportEvent.competitors[1].id);

      add(data);
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: error=$error');
      clear();
    });
  }
}
