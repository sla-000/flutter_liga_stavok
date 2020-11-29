import 'dart:convert';

import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_probabilities.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.generatedAt,
    this.schema,
    this.sportEvent,
    this.probabilities,
  });

  final DateTime generatedAt;
  final String schema;
  final SportEvent sportEvent;
  final Probabilities probabilities;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Probabilities {
  Probabilities({
    this.markets,
  });

  final List<Market> markets;

  factory Probabilities.fromJson(Map<String, dynamic> json) =>
      _$ProbabilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$ProbabilitiesToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Market {
  Market({
    this.name,
    this.outcomes,
  });

  final String name;
  final List<Outcome> outcomes;

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

@JsonSerializable()
class Outcome {
  Outcome({
    this.name,
    this.probability,
  });

  final String name;
  final double probability;

  factory Outcome.fromJson(Map<String, dynamic> json) =>
      _$OutcomeFromJson(json);

  Map<String, dynamic> toJson() => _$OutcomeToJson(this);

  @override
  String toString() => const JsonEncoder().convert(toJson());
}

// {
//     "generated_at": "2020-11-28T09:12:48+00:00",
//     "schema": "http:\/\/schemas.sportradar.com\/bsa\/soccer\/v1\/json\/endpoints\/soccer\/match_probabilities.json",
//     "sport_event": {
//         "id": "sr:match:24572856",
//         "scheduled": "2020-11-28T14:00:00+00:00",
//         "start_time_tbd": false,
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
//     },
//     "probabilities": {
//         "markets": [{
//             "name": "3way",
//             "outcomes": [{
//                 "name": "home_team_winner",
//                 "probability": 71.2
//             }, {
//                 "name": "away_team_winner",
//                 "probability": 10.9
//             }, {
//                 "name": "draw",
//                 "probability": 18
//             }]
//         }]
//     }
// }
