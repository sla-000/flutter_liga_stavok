import 'dart:async';

import 'package:logging/logging.dart';

final Logger _log = Logger('BusyFlag');

class BusyFlag {
  bool _busy = false;

  void markFree() {
    _log.finest(() => 'markFree:');
    _busy = false;
  }

  Future<void> waitFree() async {
    while (_busy) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    _busy = true;
    _log.finest(() => 'waitFree:');
  }
}
