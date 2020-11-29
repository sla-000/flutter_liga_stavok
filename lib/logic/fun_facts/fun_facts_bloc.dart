import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/fun_facts.dart' as fun_facts;
import 'package:logging/logging.dart';

final Logger _log = Logger('FunFactsBloc');

class FunFactsBloc extends SubscribeBloc<SportEvent, List<String>> {
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

        final fun_facts.Data data = await getFunFacts(sportEvent.id);
        if (data == null) {
          _log.finest(() => 'subscribe: No data');
          clear();
          return;
        }

        final List<String> facts = data.facts
            .where((fun_facts.Fact fact) => fact?.statement != null)
            .map((fun_facts.Fact fact) => fact.statement)
            .toList(growable: false);

        add(facts);
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
