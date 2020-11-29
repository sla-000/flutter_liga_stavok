import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daily_schedule.g.dart';

@JsonSerializable()
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
  String toString() => const JsonEncoder().convert(toJson());
}

// {
//     "generated_at": "2020-11-28T09:12:28+00:00",
//     "schema": "http:\/\/schemas.sportradar.com\/bsa\/soccer\/v1\/json\/endpoints\/soccer\/schedule.json",
//     "sport_events": [{
//         "id": "sr:match:24506920",
//         "scheduled": "2020-11-28T00:30:00+00:00",
//         "start_time_tbd": false,
//         "status": "closed",
//         "tournament_round": {
//             "type": "group",
//             "number": 1
//         },
//         "season": {
//             "id": "sr:season:74909",
//             "name": "Int. Friendly Games W 2020",
//             "start_date": "2020-01-01",
//             "end_date": "2020-12-31",
//             "year": "2020",
//             "tournament_id": "sr:tournament:852"
//         },
//         "tournament": {
//             "id": "sr:tournament:852",
//             "name": "Int. Friendly Games W",
//             "sport": {
//                 "id": "sr:sport:1",
//                 "name": "Soccer"
//             },
//             "category": {
//                 "id": "sr:category:4",
//                 "name": "International"
//             }
//         },
//         "competitors": [{
//             "id": "sr:competitor:7411",
//             "name": "Brazil",
//             "country": "Brazil",
//             "country_code": "BRA",
//             "abbreviation": "BRA",
//             "qualifier": "home"
//         }, {
//             "id": "sr:competitor:182526",
//             "name": "Ecuador",
//             "country": "Ecuador",
//             "country_code": "ECU",
//             "abbreviation": "ECU",
//             "qualifier": "away"
//         }]
//     }, {
//         "id": "sr:match:24572856",
//         "scheduled": "2020-11-28T14:00:00+00:00",
//         "start_time_tbd": false,
//         "status": "not_started",
//         "tournament_round": {
//             "type": "group",
//             "number": 1
//         },
//         "season": {
//             "id": "sr:season:74909",
//             "name": "Int. Friendly Games W 2020",
//             "start_date": "2020-01-01",
//             "end_date": "2020-12-31",
//             "year": "2020",
//             "tournament_id": "sr:tournament:852"
//         },
//         "tournament": {
//             "id": "sr:tournament:852",
//             "name": "Int. Friendly Games W",
//             "sport": {
//                 "id": "sr:sport:1",
//                 "name": "Soccer"
//             },
//             "category": {
//                 "id": "sr:category:4",
//                 "name": "International"
//             }
//         },
//         "competitors": [{
//             "id": "sr:competitor:49281",
//             "name": "Chile",
//             "country": "Chile",
//             "country_code": "CHL",
//             "abbreviation": "CHI",
//             "qualifier": "home"
//         }, {
//             "id": "sr:competitor:378458",
//             "name": "Zambia",
//             "country": "Zambia",
//             "country_code": "ZMB",
//             "abbreviation": "ZAM",
//             "qualifier": "away"
//         }]
//     }]
// }
