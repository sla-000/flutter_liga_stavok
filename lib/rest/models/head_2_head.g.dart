// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_2_head.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      teams: $checkedConvert(
          json,
          'teams',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Team.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      lastMeetings: $checkedConvert(
          json,
          'last_meetings',
          (v) => v == null
              ? null
              : LastMeetings.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'generatedAt': 'generated_at',
    'lastMeetings': 'last_meetings'
  });
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'teams': instance.teams,
      'last_meetings': instance.lastMeetings,
    };

LastMeetings _$LastMeetingsFromJson(Map<String, dynamic> json) {
  return $checkedNew('LastMeetings', json, () {
    final val = LastMeetings(
      results: $checkedConvert(
          json,
          'results',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Result.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$LastMeetingsToJson(LastMeetings instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
