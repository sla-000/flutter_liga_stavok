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
