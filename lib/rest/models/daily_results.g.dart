// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at', (v) => v as String),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      results: $checkedConvert(
          json,
          'results',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : DailyResults.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  }, fieldKeyMap: const {'generatedAt': 'generated_at'});
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt,
      'schema': instance.schema,
      'results': instance.results,
    };

DailyResults _$DailyResultsFromJson(Map<String, dynamic> json) {
  return $checkedNew('DailyResults', json, () {
    final val = DailyResults(
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
    'sportEvent': 'sport_event',
    'sportEventStatus': 'sport_event_status'
  });
}

Map<String, dynamic> _$DailyResultsToJson(DailyResults instance) =>
    <String, dynamic>{
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
    };
