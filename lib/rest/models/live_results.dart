import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
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
  String toString() => const JsonEncoder().convert(toJson());
}
