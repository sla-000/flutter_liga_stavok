import 'dart:async';

import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/subscribe_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:logging/logging.dart';

final Logger _log = Logger('TeamProfileBloc');

class TeamProfileBloc extends SubscribeBloc<SportEvent, team_profile.Data> {
  TeamProfileBloc({
    this.home,
  });

  final bool home;

  @override
  StreamSubscription<SportEvent> subscribe() {
    return getIt.get<SelectedEventBloc>().stream.listen(
        (SportEvent sportEvent) async {
      _log.finest(() => 'subscribe: home=$home, sportEvent=$sportEvent');
      if ((sportEvent?.competitors?.length ?? 0) != 2) {
        clear();
        return;
      }

      try {
        addError(LoadingAppBusy());

        final team_profile.Data data =
            await getTeamProfile(sportEvent.competitors[home ? 0 : 1].id);
        if (data == null) {
          _log.finest(() => 'subscribe: No data, home=$home');
          clear();
          return;
        }

        add(data);
      } on Exception catch (error) {
        _log.warning(() => 'subscribe: home=$home, error=$error');
        addError(error);
      }
    }, onError: (Object error) {
      _log.finest(() => 'subscribe: home=$home, error=$error');
      clear();
    });
  }
}
