import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/exceptions.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as dailySchedule;
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
import 'package:flutter_liga_stavok/utils/show_error.dart';
import 'package:flutter_liga_stavok/widgets/controls/select_event.dart';
import 'package:flutter_liga_stavok/widgets/controls/settings_dialog.dart';
import 'package:logging/logging.dart';
import 'package:platform_date_picker/platform_date_picker.dart';

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
              const Text('Controls'),
              const SizedBox(height: 8),
              SingleChildScrollView(
                physics: scrollPhysics,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      child: const Icon(Icons.sports_soccer, size: 16),
                      onPressed: () => _getToday(context),
                    ),
                    const SizedBox(width: 8),
                    // RaisedButton(
                    //   child: const Icon(Icons.calendar_today, size: 16),
                    //   onPressed: () => _selectDate(context),
                    // ),
                    // const SizedBox(width: 8),
                    RaisedButton(
                      child: const Icon(Icons.settings, size: 16),
                      onPressed: () => _settings(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _getToday(BuildContext context) async {
    final DateTime currentDate =
        DateTime.now().subtract(const Duration(hours: 4));

    await _getDate(currentDate, context);
  }

  void _selectDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();

    final DateTime selectedDate = await PlatformDatePicker.showDate(
      context: context,
      firstDate: currentDate.subtract(const Duration(days: 365 * 20)),
      initialDate: currentDate,
      lastDate: currentDate,
    );

    if (selectedDate == null) {
      _log.finest(() => '_selectDate: Cancelled');
      return;
    }

    await _getDate(selectedDate, context);
  }

  Future<void> _getDate(DateTime currentDate, BuildContext context) async {
    try {
      final dailySchedule.Data data = await getDailySchedule(currentDate);
      _log.finest(() => '_getToday: data=$data');
      if (data == null) {
        throw DataEmptyAppWarning();
      }

      final SportEvent selectedEvent = await showDialog<SportEvent>(
        context: context,
        child: SelectEventDialog(
          sportEvents: data?.sportEvents,
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

  void _settings(BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SettingsDialog();
      },
    );
  }
}
