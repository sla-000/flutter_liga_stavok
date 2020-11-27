import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/rest/models/daily_results.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
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
              const Text('Select event type or date'),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text('Live'),
                      onPressed: _getLive,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text('Today'),
                      onPressed: _getToday,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text('Date'),
                      onPressed: _getDate,
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

  void _getLive() async {
    try {
      final Data data = await getDailyResults(selectedDate);

      _log.finest(() => '_getLive: data=$data');
    } on Exception catch (error) {
      _log.warning(() => '_getLive: error=$error');
    }
  }

  void _getToday() async {
    try {
      final Data data = await getDailyResults(selectedDate);

      _log.finest(() => '_getLive: data=$data');
    } on Exception catch (error) {
      _log.warning(() => '_getLive: error=$error');
    }
  }

  void _getDate() async {
    try {
      final Data data = await getDailyResults(selectedDate);

      _log.finest(() => '_getLive: data=$data');
    } on Exception catch (error) {
      _log.warning(() => '_getLive: error=$error');
    }
  }
}
