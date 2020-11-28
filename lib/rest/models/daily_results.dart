import 'package:json_annotation/json_annotation.dart';

part 'daily_results.g.dart';

@JsonSerializable()
class Data {
  String generatedAt;
  String schema;
  List<DailyResults> results;

  Data({this.generatedAt, this.schema, this.results});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => 'Data{${toJson()}}';
}

@JsonSerializable()
class DailyResults {
  SportEvent sportEvent;
  SportEventStatus sportEventStatus;

  DailyResults({this.sportEvent, this.sportEventStatus});

  factory DailyResults.fromJson(Map<String, dynamic> json) =>
      _$DailyResultsFromJson(json);

  Map<String, dynamic> toJson() => _$DailyResultsToJson(this);

  @override
  String toString() => 'DailyResults{${toJson()}}';
}

@JsonSerializable()
class SportEvent {
  String id;
  String scheduled;
  bool startTimeTbd;
  TournamentRound tournamentRound;
  Season season;
  Tournament tournament;
  List<Competitors> competitors;
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
  String toString() => 'SportEvent{${toJson()}}';
}

@JsonSerializable()
class TournamentRound {
  String type;
  int number;
  String name;
  int cupRoundMatchNumber;
  int cupRoundMatches;
  String otherMatchId;
  String phase;

  TournamentRound(
      {this.type,
      this.number,
      this.name,
      this.cupRoundMatchNumber,
      this.cupRoundMatches,
      this.otherMatchId,
      this.phase});

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      _$TournamentRoundFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentRoundToJson(this);

  @override
  String toString() => 'TournamentRound{${toJson()}}';
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
  String toString() => 'Season{${toJson()}}';
}

@JsonSerializable()
class Tournament {
  String id;
  String name;
  Sport sport;
  Sport category;

  Tournament({this.id, this.name, this.sport, this.category});

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentToJson(this);

  @override
  String toString() => 'Tournament{${toJson()}}';
}

@JsonSerializable()
class Sport {
  String id;
  String name;

  Sport({this.id, this.name});

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);

  Map<String, dynamic> toJson() => _$SportToJson(this);

  @override
  String toString() => 'Sport{${toJson()}}';
}

@JsonSerializable()
class Competitors {
  String id;
  String name;
  String country;
  String countryCode;
  String abbreviation;
  String qualifier;

  Competitors(
      {this.id,
      this.name,
      this.country,
      this.countryCode,
      this.abbreviation,
      this.qualifier});

  factory Competitors.fromJson(Map<String, dynamic> json) =>
      _$CompetitorsFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitorsToJson(this);

  @override
  String toString() => 'Competitors{${toJson()}}';
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
  String toString() => 'Venue{${toJson()}}';
}

@JsonSerializable()
class SportEventStatus {
  String status;
  String matchStatus;
  int homeScore;
  int awayScore;
  String winnerId;
  List<PeriodScores> periodScores;

  SportEventStatus(
      {this.status,
      this.matchStatus,
      this.homeScore,
      this.awayScore,
      this.winnerId,
      this.periodScores});

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventStatusToJson(this);

  @override
  String toString() => 'SportEventStatus{${toJson()}}';
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
  String toString() => 'PeriodScores{${toJson()}}';
}
