// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    generatedAt: json['generated_at'] == null
        ? null
        : DateTime.parse(json['generated_at'] as String),
    schema: json['schema'] as String,
    sportEvents: (json['sport_events'] as List)
        ?.map((e) =>
            e == null ? null : SportEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'sport_events': instance.sportEvents,
    };

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return SportEvent(
    id: json['id'] as String,
    scheduled: json['scheduled'] == null
        ? null
        : DateTime.parse(json['scheduled'] as String),
    startTimeTbd: json['start_time_tbd'] as bool,
    status: json['status'] as String,
    tournamentRound: json['tournament_round'] == null
        ? null
        : TournamentRound.fromJson(
            json['tournament_round'] as Map<String, dynamic>),
    season: json['season'] == null
        ? null
        : Season.fromJson(json['season'] as Map<String, dynamic>),
    tournament: json['tournament'] == null
        ? null
        : Tournament.fromJson(json['tournament'] as Map<String, dynamic>),
    competitors: (json['competitors'] as List)
        ?.map((e) =>
            e == null ? null : Competitor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SportEventToJson(SportEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduled': instance.scheduled?.toIso8601String(),
      'start_time_tbd': instance.startTimeTbd,
      'status': instance.status,
      'tournament_round': instance.tournamentRound,
      'season': instance.season,
      'tournament': instance.tournament,
      'competitors': instance.competitors,
    };

Competitor _$CompetitorFromJson(Map<String, dynamic> json) {
  return Competitor(
    id: json['id'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    countryCode: json['country_code'] as String,
    abbreviation: json['abbreviation'] as String,
    qualifier: json['qualifier'] as String,
  );
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
  return Season(
    id: json['id'] as String,
    name: json['name'] as String,
    startDate: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    endDate: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
    year: json['year'] as String,
    tournamentId: json['tournament_id'] as String,
  );
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
  return Tournament(
    id: json['id'] as String,
    name: json['name'] as String,
    sport: json['sport'] == null
        ? null
        : Category.fromJson(json['sport'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TournamentToJson(Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sport': instance.sport,
      'category': instance.category,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

TournamentRound _$TournamentRoundFromJson(Map<String, dynamic> json) {
  return TournamentRound(
    type: json['type'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$TournamentRoundToJson(TournamentRound instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
    };
