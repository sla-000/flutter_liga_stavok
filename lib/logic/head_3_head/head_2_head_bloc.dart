import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:logging/logging.dart';

final Logger _log = Logger('Head2HeadBloc');

class Head2HeadBloc extends SubscribeBloc<SportEvent, head_2_head.Data> {
  @override
  StreamSubscription<SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: sportEvent=$sportEvent');
      if ((sportEvent?.competitors?.length ?? 0) != 2) {
        clear();
        return;
      }

      try {
        addError(LoadingAppBusy());

        final head_2_head.Data data = await getHead2Head(
            sportEvent.competitors[0].id, sportEvent.competitors[1].id);
        if (data == null) {
          _log.finest(() => 'subscribe: No data');
          clear();
          return;
        }

        add(data);
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
