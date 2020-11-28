import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class Bloc<T> {
  /// Create default bloc
  Bloc() : subject = BehaviorSubject<T>();

  /// Create bloc with predefined value
  Bloc.seeded(T seedValue) : subject = BehaviorSubject<T>.seeded(seedValue);

  /// Bloc subject
  final BehaviorSubject<T> subject;

  /// Stream of bloc subject
  Stream<T> get stream => subject.stream;

  /// Value of bloc subject
  T get value => subject.value;

  /// Last successful (not-null) value
  T lastValue;

  /// Add new value to stream and to lastValue if OK
  void add(T value) {
    if (!subject.isClosed) {
      if (value != null) {
        lastValue = value;
      }

      subject.add(value);
    }
  }

  /// Clear value stored in bloc, both in stream and in lastValue
  @mustCallSuper
  void clear() {
    if (!subject.isClosed) {
      lastValue = null;

      subject.add(null);
    }
  }

  /// Add error to stream
  void addError(Object error) {
    if (!subject.isClosed) {
      subject.addError(error);
    }
  }

  /// Add new value after delegate call
  Future<void> wrap(Future<T> Function() delegate) async {
    try {
      final T value = await delegate();

      add(value);
    } on Exception catch (error) {
      addError(error);
    }
  }

  /// Refresh stream with current value, useful for ui redraw
  void refresh() {
    add(value);
  }

  // Dispose bloc resources
  @mustCallSuper
  void dispose() {
    clear();

    subject.close();
  }
}
