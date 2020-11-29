import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_profile.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.team,
    this.jerseys,
    this.manager,
    this.players,
    this.statistics,
  });

  final DateTime generatedAt;
  final String schema;
  final Team team;
  final List<Jersey> jerseys;
  final Manager manager;
  final List<Player> players;
  final DataStatistics statistics;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Jersey {
  Jersey({
    this.type,
    this.base,
    this.sleeve,
    this.number,
    this.squares,
    this.stripes,
    this.horizontalStripes,
    this.split,
    this.shirtType,
  });

  final String type;
  final String base;
  final String sleeve;
  final String number;
  final bool squares;
  final bool stripes;
  final bool horizontalStripes;
  final bool split;
  final String shirtType;

  factory Jersey.fromJson(Map<String, dynamic> json) => _$JerseyFromJson(json);

  Map<String, dynamic> toJson() => _$JerseyToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Manager {
  Manager({
    this.id,
    this.name,
    this.nationality,
    this.countryCode,
  });

  final String id;
  final String name;
  final String nationality;
  final String countryCode;

  factory Manager.fromJson(Map<String, dynamic> json) =>
      _$ManagerFromJson(json);

  Map<String, dynamic> toJson() => _$ManagerToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Player {
  Player({
    this.id,
    this.name,
    this.type,
    this.dateOfBirth,
    this.nationality,
    this.countryCode,
    this.height,
    this.weight,
    this.jerseyNumber,
    this.gender,
    this.preferredFoot,
  });

  final String id;
  final String name;
  final String type;
  final DateTime dateOfBirth;
  final String nationality;
  final String countryCode;
  final int height;
  final int weight;
  final int jerseyNumber;
  final String gender;
  final String preferredFoot;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class DataStatistics {
  DataStatistics({
    this.seasons,
  });

  final List<Season> seasons;

  factory DataStatistics.fromJson(Map<String, dynamic> json) =>
      _$DataStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$DataStatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Season {
  Season({
    this.id,
    this.name,
    this.statistics,
    this.tournament,
    this.form,
  });

  final String id;
  final String name;
  final SeasonStatistics statistics;
  final Tournament tournament;
  final Form form;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Form {
  Form({
    this.total,
    this.home,
    this.away,
  });

  final String total;
  final String home;
  final String away;

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);

  Map<String, dynamic> toJson() => _$FormToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class SeasonStatistics {
  SeasonStatistics({
    this.matchesPlayed,
    this.matchesWon,
    this.matchesDrawn,
    this.matchesLost,
    this.goalsScored,
    this.goalsConceded,
    this.groupName,
    this.cupRank,
    this.groupPosition,
  });

  final int matchesPlayed;
  final int matchesWon;
  final int matchesDrawn;
  final int matchesLost;
  final int goalsScored;
  final int goalsConceded;
  final String groupName;
  final int cupRank;
  final int groupPosition;

  factory SeasonStatistics.fromJson(Map<String, dynamic> json) =>
      _$SeasonStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonStatisticsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}
