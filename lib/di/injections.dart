import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void injectionsInit() {
  getIt.registerSingleton<SelectedEventBloc>(SelectedEventBloc());
  getIt.registerSingleton<WinProbabilityBloc>(WinProbabilityBloc());
}

void injectionsDispose() {
  getIt.get<SelectedEventBloc>().dispose();
  getIt.get<WinProbabilityBloc>().dispose();

  getIt.reset();
}
