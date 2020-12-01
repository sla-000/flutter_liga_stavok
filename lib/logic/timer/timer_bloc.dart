import 'dart:async';

import 'package:flutter_liga_stavok/logic/bloc.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('TimerBloc');

class TimerBloc extends Bloc<void> {
  TimerBloc() {
    add(null);

    _timer = Timer(_duration, _onTimer);
  }

  Timer _timer;
  Duration get _duration => Duration(seconds: period);

  int period = 120;

  @override
  void dispose() {
    super.dispose();

    _timer?.cancel();
  }

  void _onTimer() {
    _log.finest(() => '_onTimer:');

    add(null);

    _timer.cancel();
    _timer = Timer(_duration, _onTimer);
  }
}
