// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fun_facts.dart';

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
      facts: $checkedConvert(
          json,
          'facts',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Fact.fromJson(e as Map<String, dynamic>))
              ?.toList()),
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
      'facts': instance.facts,
    };

Fact _$FactFromJson(Map<String, dynamic> json) {
  return $checkedNew('Fact', json, () {
    final val = Fact(
      statement: $checkedConvert(json, 'statement', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
      'statement': instance.statement,
    };
