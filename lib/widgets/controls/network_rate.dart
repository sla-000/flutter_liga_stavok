import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/timer/timer_bloc.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('NetworkRate');

class LiveUpdatePeriod extends StatefulWidget {
  const LiveUpdatePeriod({
    Key key,
  }) : super(key: key);

  @override
  _LiveUpdatePeriodState createState() => _LiveUpdatePeriodState();
}

class _LiveUpdatePeriodState extends State<LiveUpdatePeriod> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          child: Text('${getIt.get<TimerBloc>().period} s'),
        ),
        Expanded(
          child: Slider(
            value: getIt.get<TimerBloc>().period.toDouble(),
            onChanged: (double value) {
              setState(() {
                getIt.get<TimerBloc>().period = value.toInt();
              });
            },
            divisions: 16,
            min: 20,
            max: 180,
          ),
        ),
      ],
    );
  }
}
