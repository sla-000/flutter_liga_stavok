import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_summary.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.sportEvent,
    this.sportEventStatus,
  });

  final DateTime generatedAt;
  final String schema;
  final SportEvent sportEvent;
  final SportEventStatus sportEventStatus;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

// {
//     "generated_at": "2020-11-30T21:42:59+00:00",
//     "schema": "http:\/\/schemas.sportradar.com\/bsa\/soccer\/v1\/json\/endpoints\/soccer\/match_summary.json",
//     "sport_event": {
//         "id": "sr:match:8602026",
//         "scheduled": "2016-04-12T01:00:00+00:00",
//         "start_time_tbd": false,
//         "tournament_round": {
//             "type": "group",
//             "number": 2,
//             "group": "Gr. B"
//         },
//         "season": {
//             "id": "sr:season:12204",
//             "name": "OFC Champions League 2016",
//             "start_date": "2016-04-04",
//             "end_date": "2016-04-25",
//             "year": "2016",
//             "tournament_id": "sr:tournament:1222"
//         },
//         "tournament": {
//             "id": "sr:tournament:1222",
//             "name": "OFC Champions League",
//             "sport": {
//                 "id": "sr:sport:1",
//                 "name": "Soccer"
//             },
//             "category": {
//                 "id": "sr:category:393",
//                 "name": "International Clubs"
//             }
//         },
//         "competitors": [{
//             "id": "sr:competitor:45341",
//             "name": "Hekari United FC",
//             "country": "Papua New Guinea",
//             "country_code": "PNG",
//             "abbreviation": "HEK",
//             "qualifier": "home"
//         }, {
//             "id": "sr:competitor:199318",
//             "name": "Suva FC",
//             "abbreviation": "SUV",
//             "qualifier": "away"
//         }]
//     },
//     "sport_event_status": {
//         "status": "closed",
//         "match_status": "ended",
//         "home_score": 3,
//         "away_score": 0,
//         "winner_id": "sr:competitor:45341",
//         "period_scores": [{
//             "home_score": 2,
//             "away_score": 0,
//             "type": "regular_period",
//             "number": 1
//         }, {
//             "home_score": 1,
//             "away_score": 0,
//             "type": "regular_period",
//             "number": 2
//         }]
//     }
// }
