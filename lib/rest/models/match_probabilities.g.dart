// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_probabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      sportEvent: $checkedConvert(
          json,
          'sport_event',
          (v) => v == null
              ? null
              : SportEvent.fromJson(v as Map<String, dynamic>)),
      probabilities: $checkedConvert(
          json,
          'probabilities',
          (v) => v == null
              ? null
              : Probabilities.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'generatedAt': 'generated_at',
    'sportEvent': 'sport_event'
  });
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'sport_event': instance.sportEvent,
      'probabilities': instance.probabilities,
    };

Probabilities _$ProbabilitiesFromJson(Map<String, dynamic> json) {
  return $checkedNew('Probabilities', json, () {
    final val = Probabilities(
      markets: $checkedConvert(
          json,
          'markets',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Market.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$ProbabilitiesToJson(Probabilities instance) =>
    <String, dynamic>{
      'markets': instance.markets,
    };

Market _$MarketFromJson(Map<String, dynamic> json) {
  return $checkedNew('Market', json, () {
    final val = Market(
      name: $checkedConvert(json, 'name', (v) => v as String),
      outcomes: $checkedConvert(
          json,
          'outcomes',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : Outcome.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
      'name': instance.name,
      'outcomes': instance.outcomes,
    };

Outcome _$OutcomeFromJson(Map<String, dynamic> json) {
  return $checkedNew('Outcome', json, () {
    final val = Outcome(
      name: $checkedConvert(json, 'name', (v) => v as String),
      probability:
          $checkedConvert(json, 'probability', (v) => (v as num)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$OutcomeToJson(Outcome instance) => <String, dynamic>{
      'name': instance.name,
      'probability': instance.probability,
    };

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return $checkedNew('SportEvent', json, () {
    final val = SportEvent(
      id: $checkedConvert(json, 'id', (v) => v as String),
      scheduled: $checkedConvert(json, 'scheduled',
          (v) => v == null ? null : DateTime.parse(v as String)),
      startTimeTbd: $checkedConvert(json, 'start_time_tbd', (v) => v as bool),
      tournamentRound: $checkedConvert(
          json,
          'tournament_round',
          (v) => v == null
              ? null
              : TournamentRound.fromJson(v as Map<String, dynamic>)),
      season: $checkedConvert(json, 'season',
          (v) => v == null ? null : Season.fromJson(v as Map<String, dynamic>)),
      tournament: $checkedConvert(
          json,
          'tournament',
          (v) => v == null
              ? null
              : Tournament.fromJson(v as Map<String, dynamic>)),
      competitors: $checkedConvert(
          json,
          'competitors',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : Competitor.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  }, fieldKeyMap: const {
    'startTimeTbd': 'start_time_tbd',
    'tournamentRound': 'tournament_round'
  });
}

Map<String, dynamic> _$SportEventToJson(SportEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduled': instance.scheduled?.toIso8601String(),
      'start_time_tbd': instance.startTimeTbd,
      'tournament_round': instance.tournamentRound,
      'season': instance.season,
      'tournament': instance.tournament,
      'competitors': instance.competitors,
    };

Competitor _$CompetitorFromJson(Map<String, dynamic> json) {
  return $checkedNew('Competitor', json, () {
    final val = Competitor(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      country: $checkedConvert(json, 'country', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
      abbreviation: $checkedConvert(json, 'abbreviation', (v) => v as String),
      qualifier: $checkedConvert(json, 'qualifier', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'countryCode': 'country_code'});
}

Map<String, dynamic> _$CompetitorToJson(Competitor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'country_code': instance.countryCode,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return $checkedNew('Season', json, () {
    final val = Season(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      startDate: $checkedConvert(json, 'start_date',
          (v) => v == null ? null : DateTime.parse(v as String)),
      endDate: $checkedConvert(json, 'end_date',
          (v) => v == null ? null : DateTime.parse(v as String)),
      year: $checkedConvert(json, 'year', (v) => v as String),
      tournamentId: $checkedConvert(json, 'tournament_id', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'startDate': 'start_date',
    'endDate': 'end_date',
    'tournamentId': 'tournament_id'
  });
}

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'year': instance.year,
      'tournament_id': instance.tournamentId,
    };

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return $checkedNew('Tournament', json, () {
    final val = Tournament(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      sport: $checkedConvert(
          json,
          'sport',
          (v) =>
              v == null ? null : Category.fromJson(v as Map<String, dynamic>)),
      category: $checkedConvert(
          json,
          'category',
          (v) =>
              v == null ? null : Category.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$TournamentToJson(Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sport': instance.sport,
      'category': instance.category,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return $checkedNew('Category', json, () {
    final val = Category(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

TournamentRound _$TournamentRoundFromJson(Map<String, dynamic> json) {
  return $checkedNew('TournamentRound', json, () {
    final val = TournamentRound(
      type: $checkedConvert(json, 'type', (v) => v as String),
      number: $checkedConvert(json, 'number', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$TournamentRoundToJson(TournamentRound instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
    };
