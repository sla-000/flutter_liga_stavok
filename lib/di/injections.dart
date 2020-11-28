import 'package:flutter_liga_stavok/logic/head_3_head/head_2_head_bloc.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/timer/timer_bloc.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void injectionsInit() {
  getIt.registerSingleton<SelectedEventBloc>(SelectedEventBloc());
  getIt.registerSingleton<WinProbabilityBloc>(WinProbabilityBloc());
  getIt.registerSingleton<Head2HeadBloc>(Head2HeadBloc());
  getIt.registerSingleton<TimerBloc>(TimerBloc());
}

void injectionsDispose() {
  getIt.get<SelectedEventBloc>().dispose();
  getIt.get<WinProbabilityBloc>().dispose();
  getIt.get<Head2HeadBloc>().dispose();
  getIt.get<TimerBloc>().dispose();

  getIt.reset();
}
