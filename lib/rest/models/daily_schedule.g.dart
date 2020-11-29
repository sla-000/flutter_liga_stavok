// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      sportEvents: $checkedConvert(
          json,
          'sport_events',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : SportEvent.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  }, fieldKeyMap: const {
    'generatedAt': 'generated_at',
    'sportEvents': 'sport_events'
  });
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'sport_events': instance.sportEvents,
    };
