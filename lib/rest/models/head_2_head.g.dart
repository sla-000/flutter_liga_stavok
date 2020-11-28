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

Result _$ResultFromJson(Map<String, dynamic> json) {
  return $checkedNew('Result', json, () {
    final val = Result(
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

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
    };

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return $checkedNew('SportEvent', json, () {
    final val = SportEvent(
      id: $checkedConvert(json, 'id', (v) => v as String),
      scheduled: $checkedConvert(json, 'scheduled',
          (v) => v == null ? null : DateTime.parse(v as String)),
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
              ?.map((e) =>
                  e == null ? null : Team.fromJson(e as Map<String, dynamic>))
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
      'scheduled': instance.scheduled?.toIso8601String(),
      'start_time_tbd': instance.startTimeTbd,
      'tournament_round': instance.tournamentRound,
      'season': instance.season,
      'tournament': instance.tournament,
      'competitors': instance.competitors,
      'venue': instance.venue,
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return $checkedNew('Team', json, () {
    final val = Team(
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

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'country_code': instance.countryCode,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return $checkedNew('Season', json, () {
    final val = Season(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      startDate: $checkedConvert(json, 'start_date',
          (v) => v == null ? null : DateTime.parse(v as String)),
      endDate: $checkedConvert(json, 'end_date',
          (v) => v == null ? null : DateTime.parse(v as String)),
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
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'year': instance.year,
      'tournament_id': instance.tournamentId,
    };

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return $checkedNew('Tournament', json, () {
    final val = Tournament(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      sport: $checkedConvert(
          json,
          'sport',
          (v) =>
              v == null ? null : Category.fromJson(v as Map<String, dynamic>)),
      category: $checkedConvert(
          json,
          'category',
          (v) =>
              v == null ? null : Category.fromJson(v as Map<String, dynamic>)),
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

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return $checkedNew('Category', json, () {
    final val = Category(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

TournamentRound _$TournamentRoundFromJson(Map<String, dynamic> json) {
  return $checkedNew('TournamentRound', json, () {
    final val = TournamentRound(
      type: $checkedConvert(json, 'type', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      cupRoundMatchNumber:
          $checkedConvert(json, 'cup_round_match_number', (v) => v as int),
      cupRoundMatches:
          $checkedConvert(json, 'cup_round_matches', (v) => v as int),
      phase: $checkedConvert(json, 'phase', (v) => v as String),
      tournamentMatchNumber:
          $checkedConvert(json, 'tournament_match_number', (v) => v as int),
      number: $checkedConvert(json, 'number', (v) => v as int),
      group: $checkedConvert(json, 'group', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'cupRoundMatchNumber': 'cup_round_match_number',
    'cupRoundMatches': 'cup_round_matches',
    'tournamentMatchNumber': 'tournament_match_number'
  });
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
                  : PeriodScore.fromJson(e as Map<String, dynamic>))
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

PeriodScore _$PeriodScoreFromJson(Map<String, dynamic> json) {
  return $checkedNew('PeriodScore', json, () {
    final val = PeriodScore(
      homeScore: $checkedConvert(json, 'home_score', (v) => v as int),
      awayScore: $checkedConvert(json, 'away_score', (v) => v as int),
      type: $checkedConvert(json, 'type', (v) => v as String),
      number: $checkedConvert(json, 'number', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {'homeScore': 'home_score', 'awayScore': 'away_score'});
}

Map<String, dynamic> _$PeriodScoreToJson(PeriodScore instance) =>
    <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };
