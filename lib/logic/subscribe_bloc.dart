import 'dart:async';

import 'package:flutter_liga_stavok/logic/bloc.dart';
import 'package:meta/meta.dart';

abstract class SubscribeBloc<S, T> extends Bloc<T> {
  SubscribeBloc() {
    _subscription = subscribe();
  }

  SubscribeBloc.seeded(T value) : super.seeded(value) {
    _subscription = subscribe();
  }

  StreamSubscription<S> _subscription;

  StreamSubscription<S> subscribe();

  @mustCallSuper
  @override
  void dispose() {
    cancelSubscription();
    super.dispose();
  }

  Future<T> waitValue({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    if (value != null) {
      return value;
    }

    final T rez = await stream
        .firstWhere((T element) => element != null)
        .timeout(timeout, onTimeout: () {
      return null;
    });

    return rez;
  }

  void resubscribe() {
    cancelSubscription();

    _subscription = subscribe();
  }

  void cancelSubscription() {
    clear();

    if (_subscription != null) {
      _subscription.cancel();
      _subscription = null;
    }
  }
}
