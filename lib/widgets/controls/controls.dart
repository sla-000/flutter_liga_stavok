import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as dailySchedule;
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
import 'package:flutter_liga_stavok/utils/show_error.dart';
import 'package:flutter_liga_stavok/widgets/controls/select_event.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Controls');

class Controls extends StatelessWidget {
  const Controls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kCardElevation,
      child: Padding(
        padding: kCardPadding,
        child: SingleChildScrollView(
          physics: scrollPhysics,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Select events date'),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text('Today'),
                      onPressed: () => _getToday(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text('Select date'),
                      onPressed: () => _getDate(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _getToday(BuildContext context) async {
    final DateTime currentDate = DateTime.now();

    try {
      final dailySchedule.Data data = await getDailySchedule(currentDate);
      _log.finest(() => '_getToday: data=$data');

      final dailySchedule.SportEvent selectedEvent =
          await showDialog<dailySchedule.SportEvent>(
        context: context,
        child: SelectEventDialog(
          sportEvents: data.sportEvents,
        ),
      );

      if (selectedEvent != null) {
        _log.finest(() => '_getToday: selectedEvent=$selectedEvent');
        getIt.get<SelectedEventBloc>().add(selectedEvent);
      }
    } on Exception catch (error) {
      _log.warning(() => '_getToday: error=$error');
      getIt.get<SelectedEventBloc>().addError(error);
      showError(context, error);
    }
  }

  void _getDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();

    try {
      final dailySchedule.Data data = await getDailySchedule(currentDate);

      _log.finest(() => '_getDate: data=$data');
    } on Exception catch (error) {
      _log.warning(() => 'subscribe: error=$error');
      showError(context, error);
    }
  }
}
