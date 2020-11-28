// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_2_head.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    generatedAt: json['generated_at'] == null
        ? null
        : DateTime.parse(json['generated_at'] as String),
    schema: json['schema'] as String,
    teams: (json['teams'] as List)
        ?.map(
            (e) => e == null ? null : Team.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastMeetings: json['last_meetings'] == null
        ? null
        : LastMeetings.fromJson(json['last_meetings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'teams': instance.teams,
      'last_meetings': instance.lastMeetings,
    };

LastMeetings _$LastMeetingsFromJson(Map<String, dynamic> json) {
  return LastMeetings(
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Result.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LastMeetingsToJson(LastMeetings instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    sportEvent: json['sport_event'] == null
        ? null
        : SportEvent.fromJson(json['sport_event'] as Map<String, dynamic>),
    sportEventStatus: json['sport_event_status'] == null
        ? null
        : SportEventStatus.fromJson(
            json['sport_event_status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
    };

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return SportEvent(
    id: json['id'] as String,
    scheduled: json['scheduled'] == null
        ? null
        : DateTime.parse(json['scheduled'] as String),
    startTimeTbd: json['start_time_tbd'] as bool,
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
        ?.map(
            (e) => e == null ? null : Team.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    venue: json['venue'] == null
        ? null
        : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  );
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
      'venue': instance.venue,
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team(
    id: json['id'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    countryCode: json['country_code'] as String,
    abbreviation: json['abbreviation'] as String,
    qualifier: json['qualifier'] as String,
  );
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
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
    name: json['name'] as String,
    cupRoundMatchNumber: json['cup_round_match_number'] as int,
    cupRoundMatches: json['cup_round_matches'] as int,
    phase: json['phase'] as String,
    tournamentMatchNumber: json['tournament_match_number'] as int,
    number: json['number'] as int,
    group: json['group'] as String,
  );
}

Map<String, dynamic> _$TournamentRoundToJson(TournamentRound instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'cup_round_match_number': instance.cupRoundMatchNumber,
      'cup_round_matches': instance.cupRoundMatches,
      'phase': instance.phase,
      'tournament_match_number': instance.tournamentMatchNumber,
      'number': instance.number,
      'group': instance.group,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return Venue(
    id: json['id'] as String,
    name: json['name'] as String,
    capacity: json['capacity'] as int,
    cityName: json['city_name'] as String,
    countryName: json['country_name'] as String,
    mapCoordinates: json['map_coordinates'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capacity': instance.capacity,
      'city_name': instance.cityName,
      'country_name': instance.countryName,
      'map_coordinates': instance.mapCoordinates,
      'country_code': instance.countryCode,
    };

SportEventStatus _$SportEventStatusFromJson(Map<String, dynamic> json) {
  return SportEventStatus(
    status: json['status'] as String,
    matchStatus: json['match_status'] as String,
    homeScore: json['home_score'] as int,
    awayScore: json['away_score'] as int,
    winnerId: json['winner_id'] as String,
    periodScores: (json['period_scores'] as List)
        ?.map((e) =>
            e == null ? null : PeriodScore.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SportEventStatusToJson(SportEventStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'match_status': instance.matchStatus,
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'winner_id': instance.winnerId,
      'period_scores': instance.periodScores,
    };

PeriodScore _$PeriodScoreFromJson(Map<String, dynamic> json) {
  return PeriodScore(
    homeScore: json['home_score'] as int,
    awayScore: json['away_score'] as int,
    type: json['type'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$PeriodScoreToJson(PeriodScore instance) =>
    <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };
