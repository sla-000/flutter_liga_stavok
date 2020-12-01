import 'package:flutter_liga_stavok/logic/fun_facts/fun_facts_bloc.dart';
import 'package:flutter_liga_stavok/logic/head_3_head/head_2_head_bloc.dart';
import 'package:flutter_liga_stavok/logic/live_results/combined_results_bloc.dart';
import 'package:flutter_liga_stavok/logic/live_results/live_results_bloc.dart';
import 'package:flutter_liga_stavok/logic/match_summary/match_summary_bloc.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/away_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/team_profile/home_team_bloc.dart';
import 'package:flutter_liga_stavok/logic/timer/timer_bloc.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void injectionsInit() {
  getIt.registerSingleton<TimerBloc>(TimerBloc());

  getIt.registerLazySingleton<SelectedEventBloc>(() => SelectedEventBloc(),
      dispose: (SelectedEventBloc bloc) => bloc.dispose());

  getIt.registerLazySingleton<WinProbabilityBloc>(() => WinProbabilityBloc(),
      dispose: (WinProbabilityBloc bloc) => bloc.dispose());
  getIt.registerLazySingleton<Head2HeadBloc>(() => Head2HeadBloc(),
      dispose: (Head2HeadBloc bloc) => bloc.dispose());

  getIt.registerLazySingleton<FunFactsBloc>(() => FunFactsBloc(),
      dispose: (FunFactsBloc bloc) => bloc.dispose());

  getIt.registerLazySingleton<HomeTeamBloc>(() => HomeTeamBloc(),
      dispose: (HomeTeamBloc bloc) => bloc.dispose());
  getIt.registerLazySingleton<AwayTeamBloc>(() => AwayTeamBloc(),
      dispose: (AwayTeamBloc bloc) => bloc.dispose());

  getIt.registerLazySingleton<LiveResultsBloc>(() => LiveResultsBloc(),
      dispose: (LiveResultsBloc bloc) => bloc.dispose());
  getIt.registerSingleton<MatchSummaryBloc>(MatchSummaryBloc(),
      dispose: (MatchSummaryBloc bloc) => bloc.dispose());

  getIt.registerLazySingleton<CombinedResultsBloc>(() => CombinedResultsBloc(),
      dispose: (CombinedResultsBloc bloc) => bloc.dispose());
}

void injectionsDispose() => getIt.reset();
