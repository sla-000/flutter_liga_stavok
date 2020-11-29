// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      results: $checkedConvert(
          json,
          'results',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Result.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  }, fieldKeyMap: const {'generatedAt': 'generated_at'});
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'results': instance.results,
    };
