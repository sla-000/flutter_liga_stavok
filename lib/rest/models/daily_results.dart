import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
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
  String toString() => const JsonEncoder().convert(toJson());
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
  String toString() => const JsonEncoder().convert(toJson());
}
