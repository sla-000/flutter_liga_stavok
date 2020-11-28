import 'package:flutter_liga_stavok/logic/bloc.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as dailySchedule;
import 'package:logging/logging.dart';

final Logger _log = Logger('SelectedEventBloc');

class SelectedEventBloc extends Bloc<dailySchedule.SportEvent> {
  void select(dailySchedule.SportEvent sportEvent) {
    add(sportEvent);
  }
}
