import 'package:json_annotation/json_annotation.dart';

part 'head_2_head.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.teams,
    this.lastMeetings,
  });

  final DateTime generatedAt;
  final String schema;
  final List<Team> teams;
  final LastMeetings lastMeetings;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => 'Data{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LastMeetings {
  LastMeetings({
    this.results,
  });

  final List<Result> results;
  factory LastMeetings.fromJson(Map<String, dynamic> json) =>
      _$LastMeetingsFromJson(json);

  Map<String, dynamic> toJson() => _$LastMeetingsToJson(this);

  @override
  String toString() => 'LastMeetings{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEvent {
  SportEvent({
    this.id,
    this.scheduled,
    this.startTimeTbd,
    this.tournamentRound,
    this.season,
    this.tournament,
    this.competitors,
    this.venue,
  });

  final String id;
  final DateTime scheduled;
  final bool startTimeTbd;
  final TournamentRound tournamentRound;
  final Season season;
  final Tournament tournament;
  final List<Team> competitors;
  final Venue venue;
  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventToJson(this);

  @override
  String toString() => 'SportEvent{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  Team({
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
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);

  @override
  String toString() => 'Team{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
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
  String toString() => 'TournamentRound{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  Venue({
    this.id,
    this.name,
    this.capacity,
    this.cityName,
    this.countryName,
    this.mapCoordinates,
    this.countryCode,
  });

  final String id;
  final String name;
  final int capacity;
  final String cityName;
  final String countryName;
  final String mapCoordinates;
  final String countryCode;
  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);

  @override
  String toString() => 'Venue{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEventStatus {
  SportEventStatus({
    this.status,
    this.matchStatus,
    this.homeScore,
    this.awayScore,
    this.winnerId,
    this.periodScores,
  });

  final String status;
  final String matchStatus;
  final int homeScore;
  final int awayScore;
  final String winnerId;
  final List<PeriodScore> periodScores;
  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventStatusToJson(this);

  @override
  String toString() => 'SportEventStatus{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
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
