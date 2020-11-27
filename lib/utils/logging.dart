import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void setupLogging() {
  Logger.root.onRecord.listen((LogRecord rec) {
    debugPrint(
        '${rec.time.hour.toString().padLeft(2, '0')}:'
        '${rec.time.minute.toString().padLeft(2, '0')}:'
        '${rec.time.second.toString().padLeft(2, '0')}.'
        '${rec.time.millisecond.toString().padLeft(3, '0')}: '
        '${rec.loggerName}/${rec.level.name}: '
        '${rec.message}'
        '${rec.error == null ? "" : ": error=${rec.error}"}'
        '${rec.stackTrace == null ? "" : ": stacktrace=${rec.stackTrace}"}',
        wrapWidth: 700);
  });

  Logger.root.level = Level.FINEST;
  hierarchicalLoggingEnabled = true;
}
