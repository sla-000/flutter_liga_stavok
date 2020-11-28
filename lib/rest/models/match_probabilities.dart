import 'package:json_annotation/json_annotation.dart';

part 'match_probabilities.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
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
  String toString() => toJson().toString();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Probabilities {
  Probabilities({
    this.markets,
  });

  final List<Market> markets;

  factory Probabilities.fromJson(Map<String, dynamic> json) =>
      _$ProbabilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$ProbabilitiesToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable(fieldRename: FieldRename.snake)
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
  String toString() => toJson().toString();
}

@JsonSerializable(fieldRename: FieldRename.snake)
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
  String toString() => toJson().toString();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEvent {
  SportEvent({
    this.id,
    this.scheduled,
    this.startTimeTbd,
    this.tournamentRound,
    this.season,
    this.tournament,
    this.competitors,
  });

  final String id;
  final DateTime scheduled;
  final bool startTimeTbd;
  final TournamentRound tournamentRound;
  final Season season;
  final Tournament tournament;
  final List<Competitor> competitors;

  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventToJson(this);

  @override
  String toString() => toJson().toString();
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
  String toString() => toJson().toString();
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
  String toString() => toJson().toString();
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
  String toString() => toJson().toString();
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
  String toString() => toJson().toString();
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
  String toString() => toJson().toString();
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
