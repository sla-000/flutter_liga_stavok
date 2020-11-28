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

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return $checkedNew('SportEvent', json, () {
    final val = SportEvent(
      id: $checkedConvert(json, 'id', (v) => v as String),
      scheduled: $checkedConvert(json, 'scheduled', (v) => v as String),
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
                  : Competitors.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      venue: $checkedConvert(json, 'venue',
          (v) => v == null ? null : Venue.fromJson(v as Map<String, dynamic>)),
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
      'scheduled': instance.scheduled,
      'start_time_tbd': instance.startTimeTbd,
      'tournament_round': instance.tournamentRound,
      'season': instance.season,
      'tournament': instance.tournament,
      'competitors': instance.competitors,
      'venue': instance.venue,
    };

TournamentRound _$TournamentRoundFromJson(Map<String, dynamic> json) {
  return $checkedNew('TournamentRound', json, () {
    final val = TournamentRound(
      type: $checkedConvert(json, 'type', (v) => v as String),
      number: $checkedConvert(json, 'number', (v) => v as int),
      name: $checkedConvert(json, 'name', (v) => v as String),
      cupRoundMatchNumber:
          $checkedConvert(json, 'cup_round_match_number', (v) => v as int),
      cupRoundMatches:
          $checkedConvert(json, 'cup_round_matches', (v) => v as int),
      otherMatchId: $checkedConvert(json, 'other_match_id', (v) => v as String),
      phase: $checkedConvert(json, 'phase', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'cupRoundMatchNumber': 'cup_round_match_number',
    'cupRoundMatches': 'cup_round_matches',
    'otherMatchId': 'other_match_id'
  });
}

Map<String, dynamic> _$TournamentRoundToJson(TournamentRound instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
      'name': instance.name,
      'cup_round_match_number': instance.cupRoundMatchNumber,
      'cup_round_matches': instance.cupRoundMatches,
      'other_match_id': instance.otherMatchId,
      'phase': instance.phase,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return $checkedNew('Season', json, () {
    final val = Season(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      startDate: $checkedConvert(json, 'start_date', (v) => v as String),
      endDate: $checkedConvert(json, 'end_date', (v) => v as String),
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
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'year': instance.year,
      'tournament_id': instance.tournamentId,
    };

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return $checkedNew('Tournament', json, () {
    final val = Tournament(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      sport: $checkedConvert(json, 'sport',
          (v) => v == null ? null : Sport.fromJson(v as Map<String, dynamic>)),
      category: $checkedConvert(json, 'category',
          (v) => v == null ? null : Sport.fromJson(v as Map<String, dynamic>)),
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

Sport _$SportFromJson(Map<String, dynamic> json) {
  return $checkedNew('Sport', json, () {
    final val = Sport(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$SportToJson(Sport instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Competitors _$CompetitorsFromJson(Map<String, dynamic> json) {
  return $checkedNew('Competitors', json, () {
    final val = Competitors(
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

Map<String, dynamic> _$CompetitorsToJson(Competitors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'country_code': instance.countryCode,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return $checkedNew('Venue', json, () {
    final val = Venue(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      capacity: $checkedConvert(json, 'capacity', (v) => v as int),
      cityName: $checkedConvert(json, 'city_name', (v) => v as String),
      countryName: $checkedConvert(json, 'country_name', (v) => v as String),
      mapCoordinates:
          $checkedConvert(json, 'map_coordinates', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'cityName': 'city_name',
    'countryName': 'country_name',
    'mapCoordinates': 'map_coordinates',
    'countryCode': 'country_code'
  });
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
  return $checkedNew('SportEventStatus', json, () {
    final val = SportEventStatus(
      status: $checkedConvert(json, 'status', (v) => v as String),
      matchStatus: $checkedConvert(json, 'match_status', (v) => v as String),
      homeScore: $checkedConvert(json, 'home_score', (v) => v as int),
      awayScore: $checkedConvert(json, 'away_score', (v) => v as int),
      winnerId: $checkedConvert(json, 'winner_id', (v) => v as String),
      periodScores: $checkedConvert(
          json,
          'period_scores',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : PeriodScores.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  }, fieldKeyMap: const {
    'matchStatus': 'match_status',
    'homeScore': 'home_score',
    'awayScore': 'away_score',
    'winnerId': 'winner_id',
    'periodScores': 'period_scores'
  });
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

PeriodScores _$PeriodScoresFromJson(Map<String, dynamic> json) {
  return $checkedNew('PeriodScores', json, () {
    final val = PeriodScores(
      homeScore: $checkedConvert(json, 'home_score', (v) => v as int),
      awayScore: $checkedConvert(json, 'away_score', (v) => v as int),
      type: $checkedConvert(json, 'type', (v) => v as String),
      number: $checkedConvert(json, 'number', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {'homeScore': 'home_score', 'awayScore': 'away_score'});
}

Map<String, dynamic> _$PeriodScoresToJson(PeriodScores instance) =>
    <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };
