import 'package:json_annotation/json_annotation.dart';

part 'daily_schedule.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.sportEvents,
  });

  final DateTime generatedAt;
  final String schema;
  final List<SportEvent> sportEvents;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => 'Data{${toJson()}}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEvent {
  SportEvent({
    this.id,
    this.scheduled,
    this.startTimeTbd,
    this.status,
    this.tournamentRound,
    this.season,
    this.tournament,
    this.competitors,
  });

  final String id;
  final DateTime scheduled;
  final bool startTimeTbd;
  final String status;
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

@JsonSerializable(fieldRename: FieldRename.snake)
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
    this.number,
  });

  final String type;
  final int number;

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      _$TournamentRoundFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentRoundToJson(this);

  @override
  String toString() => 'TournamentRound{${toJson()}}';
}
