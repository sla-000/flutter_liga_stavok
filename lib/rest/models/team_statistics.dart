import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_statistics.g.dart';

@JsonSerializable()
class Data {
  String generatedAt;
  String schema;
  Tournament tournament;
  Team team;
  TeamSeasonCoverage teamSeasonCoverage;
  TeamStatistics teamStatistics;
  List<PlayerStatistics> playerStatistics;
  GoaltimeStatistics goaltimeStatistics;

  Data(
      {this.generatedAt,
      this.schema,
      this.tournament,
      this.team,
      this.teamSeasonCoverage,
      this.teamStatistics,
      this.playerStatistics,
      this.goaltimeStatistics});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class TeamSeasonCoverage {
  int scheduled;
  int played;
  int platinum;
  int gold;

  TeamSeasonCoverage({this.scheduled, this.played, this.platinum, this.gold});

  factory TeamSeasonCoverage.fromJson(Map<String, dynamic> json) =>
      _$TeamSeasonCoverageFromJson(json);

  Map<String, dynamic> toJson() => _$TeamSeasonCoverageToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class TeamStatistics {
  int matchesPlayed;
  int matchesWon;
  String form;
  GoalAttempts goalAttempts;
  GoalAttempts shotsOnGoal;
  GoalAttempts shotsOffGoal;
  GoalAttempts cornerKicks;
  GoalAttempts ballPossession;
  GoalAttempts shotsBlocked;
  GoalAttempts cardsGiven;
  GoalAttempts freeKicks;
  GoalAttempts offsides;
  GoalAttempts shotsOnBar;
  GoalAttempts goalsByFoot;
  GoalAttempts goalsScored;
  GoalAttempts goalsConceded;

  TeamStatistics(
      {this.matchesPlayed,
      this.matchesWon,
      this.form,
      this.goalAttempts,
      this.shotsOnGoal,
      this.shotsOffGoal,
      this.cornerKicks,
      this.ballPossession,
      this.shotsBlocked,
      this.cardsGiven,
      this.freeKicks,
      this.offsides,
      this.shotsOnBar,
      this.goalsByFoot,
      this.goalsScored,
      this.goalsConceded});

  factory TeamStatistics.fromJson(Map<String, dynamic> json) =>
      _$TeamStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class GoalAttempts {
  int total;
  int matches;

  GoalAttempts({this.total, this.matches});

  factory GoalAttempts.fromJson(Map<String, dynamic> json) =>
      _$GoalAttemptsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalAttemptsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class PlayerStatistics {
  String id;
  String name;
  int matchesPlayed;
  Statistics statistics;
  int minutesPlayed;

  PlayerStatistics(
      {this.id,
      this.name,
      this.matchesPlayed,
      this.statistics,
      this.minutesPlayed});

  factory PlayerStatistics.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerStatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Statistics {
  GoalAttempts goalsScored;
  GoalAttempts shotsOnGoal;
  GoalAttempts substitutedOut;
  GoalAttempts goalAttempts;
  GoalAttempts offsides;
  GoalAttempts cardsGiven;
  GoalAttempts shotsOffGoal;
  GoalAttempts substitutedIn;
  GoalAttempts shotsBlocked;
  GoalAttempts cornerKicks;
  GoalAttempts assists;

  Statistics(
      {this.goalsScored,
      this.shotsOnGoal,
      this.substitutedOut,
      this.goalAttempts,
      this.offsides,
      this.cardsGiven,
      this.shotsOffGoal,
      this.substitutedIn,
      this.shotsBlocked,
      this.cornerKicks,
      this.assists});

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class GoaltimeStatistics {
  Scored scored;
  Scored conceded;

  GoaltimeStatistics({this.scored, this.conceded});

  factory GoaltimeStatistics.fromJson(Map<String, dynamic> json) =>
      _$GoaltimeStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$GoaltimeStatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Scored {
  int total;
  List<Period> period;

  Scored({this.total, this.period});

  factory Scored.fromJson(Map<String, dynamic> json) => _$ScoredFromJson(json);

  Map<String, dynamic> toJson() => _$ScoredToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Period {
  String name;
  int value;

  Period({this.name, this.value});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}
