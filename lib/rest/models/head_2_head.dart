import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'head_2_head.g.dart';

@JsonSerializable()
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
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class LastMeetings {
  LastMeetings({
    this.results,
  });

  final List<Result> results;

  factory LastMeetings.fromJson(Map<String, dynamic> json) =>
      _$LastMeetingsFromJson(json);

  Map<String, dynamic> toJson() => _$LastMeetingsToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

// {
//     "generated_at": "2020-11-28T11:38:00+00:00",
//     "schema": "http:\/\/schemas.sportradar.com\/bsa\/soccer\/v1\/json\/endpoints\/soccer\/team_versus_matches.json",
//     "teams": [{
//         "id": "sr:competitor:7411",
//         "name": "Brazil",
//         "country": "Brazil",
//         "country_code": "BRA",
//         "abbreviation": "BRA"
//     }, {
//         "id": "sr:competitor:182526",
//         "name": "Ecuador",
//         "country": "Ecuador",
//         "country_code": "ECU",
//         "abbreviation": "ECU"
//     }],
//     "last_meetings": {
//         "results": [{
//             "sport_event": {
//                 "id": "sr:match:24506920",
//                 "scheduled": "2020-11-28T00:30:00+00:00",
//                 "start_time_tbd": false,
//                 "tournament_round": {
//                     "type": "group",
//                     "number": 1
//                 },
//                 "season": {
//                     "id": "sr:season:74909",
//                     "name": "Int. Friendly Games W 2020",
//                     "start_date": "2020-01-01",
//                     "end_date": "2020-12-31",
//                     "year": "2020",
//                     "tournament_id": "sr:tournament:852"
//                 },
//                 "tournament": {
//                     "id": "sr:tournament:852",
//                     "name": "Int. Friendly Games W",
//                     "sport": {
//                         "id": "sr:sport:1",
//                         "name": "Soccer"
//                     },
//                     "category": {
//                         "id": "sr:category:4",
//                         "name": "International"
//                     }
//                 },
//                 "competitors": [{
//                     "id": "sr:competitor:7411",
//                     "name": "Brazil",
//                     "country": "Brazil",
//                     "country_code": "BRA",
//                     "abbreviation": "BRA",
//                     "qualifier": "home"
//                 }, {
//                     "id": "sr:competitor:182526",
//                     "name": "Ecuador",
//                     "country": "Ecuador",
//                     "country_code": "ECU",
//                     "abbreviation": "ECU",
//                     "qualifier": "away"
//                 }]
//             },
//             "sport_event_status": {
//                 "status": "closed",
//                 "match_status": "ended",
//                 "home_score": 6,
//                 "away_score": 0,
//                 "winner_id": "sr:competitor:7411",
//                 "period_scores": [{
//                     "home_score": 1,
//                     "away_score": 0,
//                     "type": "regular_period",
//                     "number": 1
//                 }, {
//                     "home_score": 5,
//                     "away_score": 0,
//                     "type": "regular_period",
//                     "number": 2
//                 }]
//             }
//         }]
//     },
//     "next_meetings": [{
//         "sport_event": {
//             "id": "sr:match:24506922",
//             "scheduled": "2020-12-01T23:30:00+00:00",
//             "start_time_tbd": false,
//             "tournament_round": {
//                 "type": "group",
//                 "number": 1
//             },
//             "season": {
//                 "id": "sr:season:74909",
//                 "name": "Int. Friendly Games W 2020",
//                 "start_date": "2020-01-01",
//                 "end_date": "2020-12-31",
//                 "year": "2020",
//                 "tournament_id": "sr:tournament:852"
//             },
//             "tournament": {
//                 "id": "sr:tournament:852",
//                 "name": "Int. Friendly Games W",
//                 "sport": {
//                     "id": "sr:sport:1",
//                     "name": "Soccer"
//                 },
//                 "category": {
//                     "id": "sr:category:4",
//                     "name": "International"
//                 }
//             },
//             "competitors": [{
//                 "id": "sr:competitor:7411",
//                 "name": "Brazil",
//                 "country": "Brazil",
//                 "country_code": "BRA",
//                 "abbreviation": "BRA",
//                 "qualifier": "home"
//             }, {
//                 "id": "sr:competitor:182526",
//                 "name": "Ecuador",
//                 "country": "Ecuador",
//                 "country_code": "ECU",
//                 "abbreviation": "ECU",
//                 "qualifier": "away"
//             }]
//         }
//     }]
// }
