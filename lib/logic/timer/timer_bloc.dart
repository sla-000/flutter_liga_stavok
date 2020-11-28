import 'dart:async';

import 'package:flutter_liga_stavok/logic/bloc.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('TimerBloc');

class TimerBloc extends Bloc<void> {
  TimerBloc() {
    Timer(duration, _onTimer);
  }

  Timer _timer;

  Duration duration = const Duration(seconds: 30);

  @override
  void dispose() {
    super.dispose();

    _timer.cancel();
  }

  void _onTimer() {
    _log.finest(() => '_onTimer:');

    add(null);

    _timer.cancel();

    _timer = Timer(duration, _onTimer);
  }
}
