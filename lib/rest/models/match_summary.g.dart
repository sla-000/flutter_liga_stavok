// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_summary.dart';

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
      sportEventStatus: $checkedConvert(
          json,
          'sport_event_status',
          (v) => v == null
              ? null
              : SportEventStatus.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'generatedAt': 'generated_at',
    'sportEvent': 'sport_event',
    'sportEventStatus': 'sport_event_status'
  });
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
    };
