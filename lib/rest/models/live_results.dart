import 'package:json_annotation/json_annotation.dart';

part 'live_results.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.results,
  });

  final DateTime generatedAt;
  final String schema;
  final List<Result> results;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => 'Data{${toJson()}}';
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
  String toString() => 'Result{${toJson()}}';
}

@JsonSerializable()
class SportEvent {
  SportEvent({
    this.id,
    this.scheduled,
    this.startTimeTbd,
    this.tournamentRound,
    this.season,
    this.tournament,
    this.competitors,
  });

  final String id;
  final DateTime scheduled;
  final bool startTimeTbd;
  final TournamentRound tournamentRound;
  final Season season;
  final Tournament tournament;
  final List<Competitor> competitors;

  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventToJson(this);

  @override
  String toString() => 'SportEvent{${toJson()}}';
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
  String toString() => 'Competitor{${toJson()}}';
}

@JsonSerializable()
class Season {
  Season({
    this.id,
    this.name,
    this.startDate,
    this.endDate,
    this.year,
    this.tournamentId,
  });

  final String id;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final String year;
  final String tournamentId;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  String toString() => 'Season{${toJson()}}';
}

@JsonSerializable()
class Tournament {
  Tournament({
    this.id,
    this.name,
    this.sport,
    this.category,
  });

  final String id;
  final String name;
  final Category sport;
  final Category category;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentToJson(this);

  @override
  String toString() => 'Tournament{${toJson()}}';
}

@JsonSerializable()
class Category {
  Category({
    this.id,
    this.name,
  });

  final String id;
  final String name;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() => 'Category{${toJson()}}';
}

@JsonSerializable()
class TournamentRound {
  TournamentRound({
    this.type,
    this.group,
  });

  final String type;
  final String group;

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      _$TournamentRoundFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentRoundToJson(this);

  @override
  String toString() => 'TournamentRound{${toJson()}}';
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
  String toString() => 'SportEventStatus{${toJson()}}';
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
  String toString() => 'Clock{${toJson()}}';
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
  String toString() => 'PeriodScore{${toJson()}}';
}
