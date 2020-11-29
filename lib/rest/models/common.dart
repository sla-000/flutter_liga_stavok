import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable()
class SportEvent {
  String id;
  String scheduled;
  bool startTimeTbd;
  TournamentRound tournamentRound;
  Season season;
  Tournament tournament;
  List<Competitor> competitors;
  Venue venue;

  SportEvent(
      {this.id,
      this.scheduled,
      this.startTimeTbd,
      this.tournamentRound,
      this.season,
      this.tournament,
      this.competitors,
      this.venue});

  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class TournamentRound {
  TournamentRound({
    this.type,
    this.name,
    this.cupRoundMatchNumber,
    this.cupRoundMatches,
    this.phase,
    this.tournamentMatchNumber,
    this.number,
    this.group,
  });

  final String type;
  final String name;
  final int cupRoundMatchNumber;
  final int cupRoundMatches;
  final String phase;
  final int tournamentMatchNumber;
  final int number;
  final String group;
  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      _$TournamentRoundFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentRoundToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Season {
  String id;
  String name;
  String startDate;
  String endDate;
  String year;
  String tournamentId;

  Season(
      {this.id,
      this.name,
      this.startDate,
      this.endDate,
      this.year,
      this.tournamentId});

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Tournament {
  String id;
  String name;
  Sport sport;
  Sport category;
  CurrentSeason currentSeason;

  Tournament(
      {this.id, this.name, this.sport, this.category, this.currentSeason});

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class CurrentSeason {
  String id;
  String name;
  String startDate;
  String endDate;
  String year;

  CurrentSeason({this.id, this.name, this.startDate, this.endDate, this.year});

  factory CurrentSeason.fromJson(Map<String, dynamic> json) =>
      _$CurrentSeasonFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentSeasonToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Sport {
  String id;
  String name;

  Sport({this.id, this.name});

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);

  Map<String, dynamic> toJson() => _$SportToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Venue {
  String id;
  String name;
  int capacity;
  String cityName;
  String countryName;
  String mapCoordinates;
  String countryCode;

  Venue(
      {this.id,
      this.name,
      this.capacity,
      this.cityName,
      this.countryName,
      this.mapCoordinates,
      this.countryCode});

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class SportEventStatus {
  SportEventStatus({
    this.status,
    this.matchStatus,
    this.homeScore,
    this.awayScore,
    this.period,
    this.clock,
    this.periodScores,
  });

  final String status;
  final String matchStatus;
  final int homeScore;
  final int awayScore;
  final int period;
  final Clock clock;
  final List<PeriodScore> periodScores;

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventStatusToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class PeriodScore {
  PeriodScore({
    this.homeScore,
    this.awayScore,
    this.type,
    this.number,
  });

  final int homeScore;
  final int awayScore;
  final String type;
  final int number;

  factory PeriodScore.fromJson(Map<String, dynamic> json) =>
      _$PeriodScoreFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodScoreToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Clock {
  Clock({
    this.matchTime,
  });

  final String matchTime;

  factory Clock.fromJson(Map<String, dynamic> json) => _$ClockFromJson(json);

  Map<String, dynamic> toJson() => _$ClockToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class PeriodScores {
  int homeScore;
  int awayScore;
  String type;
  int number;

  PeriodScores({this.homeScore, this.awayScore, this.type, this.number});

  factory PeriodScores.fromJson(Map<String, dynamic> json) =>
      _$PeriodScoresFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodScoresToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Competitor {
  Competitor({
    this.id,
    this.name,
    this.country,
    this.countryCode,
    this.abbreviation,
    this.qualifier,
  });

  final String id;
  final String name;
  final String country;
  final String countryCode;
  final String abbreviation;
  final String qualifier;

  factory Competitor.fromJson(Map<String, dynamic> json) =>
      _$CompetitorFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitorToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Category {
  String id;
  String name;
  String countryCode;

  Category({this.id, this.name, this.countryCode});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Result {
  Result({
    this.sportEvent,
    this.sportEventStatus,
  });

  final SportEvent sportEvent;
  final SportEventStatus sportEventStatus;
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Team {
  Team({
    this.id,
    this.name,
    this.country,
    this.countryCode,
    this.sport,
    this.category,
    this.abbreviation,
    this.qualifier,
  });

  final String id;
  final String name;
  final String country;
  final String countryCode;
  final Sport sport;
  final Sport category;
  final String abbreviation;
  final String qualifier;
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}
