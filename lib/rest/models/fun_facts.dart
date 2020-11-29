import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fun_facts.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.sportEvent,
    this.facts,
  });

  final DateTime generatedAt;
  final String schema;
  final SportEvent sportEvent;
  final List<Fact> facts;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Fact {
  Fact({
    this.statement,
  });

  final String statement;

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);

  Map<String, dynamic> toJson() => _$FactToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

// {
//     "generated_at": "2020-11-29T09:44:17+00:00",
//     "schema": "http:\/\/schemas.sportradar.com\/bsa\/soccer\/v1\/json\/endpoints\/soccer\/match_funfacts.json",
//     "sport_event": {
//         "id": "sr:match:19173652",
//         "scheduled": "2020-12-01T11:00:00+00:00",
//         "start_time_tbd": false,
//         "tournament_round": {
//             "type": "group",
//             "number": 10,
//             "group": "B"
//         },
//         "season": {
//             "id": "sr:season:70420",
//             "name": "Womens Euro, Qualif. 2021",
//             "start_date": "2019-08-29",
//             "end_date": "2020-12-02",
//             "year": "2021",
//             "tournament_id": "sr:tournament:878"
//         },
//         "tournament": {
//             "id": "sr:tournament:878",
//             "name": "Womens Euro, Qualif.",
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
//             "id": "sr:competitor:38088",
//             "name": "Georgia",
//             "country": "Georgia",
//             "country_code": "GEO",
//             "abbreviation": "GEO",
//             "qualifier": "home"
//         }, {
//             "id": "sr:competitor:38082",
//             "name": "Bosnia & Herzegovina",
//             "country": "Bosnia & Herzegovina",
//             "country_code": "BIH",
//             "abbreviation": "BOH",
//             "qualifier": "away"
//         }]
//     },
//     "facts": [{
//         "statement": "Georgia's home record this season: 0-0-4."
//     }, {
//         "statement": "Georgia have a losing streak of 4 matches at home."
//     }, {
//         "statement": "Georgia have lost 9 matches in a row."
//     }, {
//         "statement": "Georgia wins 1st half in 0% of their matches, Bosnia & Herzegovina in 25% of their matches."
//     }, {
//         "statement": "Georgia wins 0% of halftimes, Bosnia & Herzegovina wins 25%."
//     }, {
//         "statement": "Both teams lost their last match."
//     }, {
//         "statement": "Both teams haven't won their last match in Womens Euro, Qualif.."
//     }, {
//         "statement": "In Womens Euro, Qualif., Bosnia & Herzegovina has better performance than Georgia."
//     }, {
//         "statement": "The winner of their last meeting was Bosnia & Herzegovina."
//     }, {
//         "statement": "On their last meeting Bosnia & Herzegovina won by 6 goals."
//     }, {
//         "statement": "Georgia scores 0.5 goals when playing at home and Bosnia & Herzegovina scores 3 goals when playing away (on average)."
//     }, {
//         "statement": "Bosnia & Herzegovina has streak of 2 matches with 0 scored goals."
//     }, {
//         "statement": "When Bosnia & Herzegovina leads 0-1 away, they win in 100% of their matches."
//     }, {
//         "statement": "When Georgia is down 0-1 home, they win 0% of their matches."
//     }, {
//         "statement": "Both teams didn't score on their last match."
//     }, {
//         "statement": "Georgia have conceded a goal in each of their last 21 matches."
//     }, {
//         "statement": "Georgia have a losing streak of 9 matches in Womens Euro, Qualif.."
//     }, {
//         "statement": "Georgia haven't scored in 3 of their 4 home matches in Womens Euro, Qualif. this season."
//     }, {
//         "statement": "Bosnia & Herzegovina haven't scored in 2 of their 4 away matches in Womens Euro, Qualif. this season."
//     }, {
//         "statement": "Did you know that Bosnia & Herzegovina scores 25% of their goals between the minutes 0-15?"
//     }]
// }
