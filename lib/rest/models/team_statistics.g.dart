// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at', (v) => v as String),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      tournament: $checkedConvert(
          json,
          'tournament',
          (v) => v == null
              ? null
              : Tournament.fromJson(v as Map<String, dynamic>)),
      team: $checkedConvert(json, 'team',
          (v) => v == null ? null : Team.fromJson(v as Map<String, dynamic>)),
      teamSeasonCoverage: $checkedConvert(
          json,
          'team_season_coverage',
          (v) => v == null
              ? null
              : TeamSeasonCoverage.fromJson(v as Map<String, dynamic>)),
      teamStatistics: $checkedConvert(
          json,
          'team_statistics',
          (v) => v == null
              ? null
              : TeamStatistics.fromJson(v as Map<String, dynamic>)),
      playerStatistics: $checkedConvert(
          json,
          'player_statistics',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : PlayerStatistics.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      goaltimeStatistics: $checkedConvert(
          json,
          'goaltime_statistics',
          (v) => v == null
              ? null
              : GoaltimeStatistics.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'generatedAt': 'generated_at',
    'teamSeasonCoverage': 'team_season_coverage',
    'teamStatistics': 'team_statistics',
    'playerStatistics': 'player_statistics',
    'goaltimeStatistics': 'goaltime_statistics'
  });
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt,
      'schema': instance.schema,
      'tournament': instance.tournament,
      'team': instance.team,
      'team_season_coverage': instance.teamSeasonCoverage,
      'team_statistics': instance.teamStatistics,
      'player_statistics': instance.playerStatistics,
      'goaltime_statistics': instance.goaltimeStatistics,
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
      currentSeason: $checkedConvert(
          json,
          'current_season',
          (v) => v == null
              ? null
              : CurrentSeason.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'currentSeason': 'current_season'});
}

Map<String, dynamic> _$TournamentToJson(Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sport': instance.sport,
      'category': instance.category,
      'current_season': instance.currentSeason,
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

CurrentSeason _$CurrentSeasonFromJson(Map<String, dynamic> json) {
  return $checkedNew('CurrentSeason', json, () {
    final val = CurrentSeason(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      startDate: $checkedConvert(json, 'start_date', (v) => v as String),
      endDate: $checkedConvert(json, 'end_date', (v) => v as String),
      year: $checkedConvert(json, 'year', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'startDate': 'start_date', 'endDate': 'end_date'});
}

Map<String, dynamic> _$CurrentSeasonToJson(CurrentSeason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'year': instance.year,
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return $checkedNew('Team', json, () {
    final val = Team(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      country: $checkedConvert(json, 'country', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
      sport: $checkedConvert(json, 'sport',
          (v) => v == null ? null : Sport.fromJson(v as Map<String, dynamic>)),
      category: $checkedConvert(json, 'category',
          (v) => v == null ? null : Sport.fromJson(v as Map<String, dynamic>)),
      abbreviation: $checkedConvert(json, 'abbreviation', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'countryCode': 'country_code'});
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'country_code': instance.countryCode,
      'sport': instance.sport,
      'category': instance.category,
      'abbreviation': instance.abbreviation,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return $checkedNew('Category', json, () {
    final val = Category(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'countryCode': 'country_code'});
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_code': instance.countryCode,
    };

TeamSeasonCoverage _$TeamSeasonCoverageFromJson(Map<String, dynamic> json) {
  return $checkedNew('TeamSeasonCoverage', json, () {
    final val = TeamSeasonCoverage(
      scheduled: $checkedConvert(json, 'scheduled', (v) => v as int),
      played: $checkedConvert(json, 'played', (v) => v as int),
      platinum: $checkedConvert(json, 'platinum', (v) => v as int),
      gold: $checkedConvert(json, 'gold', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$TeamSeasonCoverageToJson(TeamSeasonCoverage instance) =>
    <String, dynamic>{
      'scheduled': instance.scheduled,
      'played': instance.played,
      'platinum': instance.platinum,
      'gold': instance.gold,
    };

TeamStatistics _$TeamStatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('TeamStatistics', json, () {
    final val = TeamStatistics(
      matchesPlayed: $checkedConvert(json, 'matches_played', (v) => v as int),
      matchesWon: $checkedConvert(json, 'matches_won', (v) => v as int),
      form: $checkedConvert(json, 'form', (v) => v as String),
      goalAttempts: $checkedConvert(
          json,
          'goal_attempts',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsOnGoal: $checkedConvert(
          json,
          'shots_on_goal',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsOffGoal: $checkedConvert(
          json,
          'shots_off_goal',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      cornerKicks: $checkedConvert(
          json,
          'corner_kicks',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      ballPossession: $checkedConvert(
          json,
          'ball_possession',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsBlocked: $checkedConvert(
          json,
          'shots_blocked',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      cardsGiven: $checkedConvert(
          json,
          'cards_given',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      freeKicks: $checkedConvert(
          json,
          'free_kicks',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      offsides: $checkedConvert(
          json,
          'offsides',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsOnBar: $checkedConvert(
          json,
          'shots_on_bar',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      goalsByFoot: $checkedConvert(
          json,
          'goals_by_foot',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      goalsScored: $checkedConvert(
          json,
          'goals_scored',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      goalsConceded: $checkedConvert(
          json,
          'goals_conceded',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'matchesPlayed': 'matches_played',
    'matchesWon': 'matches_won',
    'goalAttempts': 'goal_attempts',
    'shotsOnGoal': 'shots_on_goal',
    'shotsOffGoal': 'shots_off_goal',
    'cornerKicks': 'corner_kicks',
    'ballPossession': 'ball_possession',
    'shotsBlocked': 'shots_blocked',
    'cardsGiven': 'cards_given',
    'freeKicks': 'free_kicks',
    'shotsOnBar': 'shots_on_bar',
    'goalsByFoot': 'goals_by_foot',
    'goalsScored': 'goals_scored',
    'goalsConceded': 'goals_conceded'
  });
}

Map<String, dynamic> _$TeamStatisticsToJson(TeamStatistics instance) =>
    <String, dynamic>{
      'matches_played': instance.matchesPlayed,
      'matches_won': instance.matchesWon,
      'form': instance.form,
      'goal_attempts': instance.goalAttempts,
      'shots_on_goal': instance.shotsOnGoal,
      'shots_off_goal': instance.shotsOffGoal,
      'corner_kicks': instance.cornerKicks,
      'ball_possession': instance.ballPossession,
      'shots_blocked': instance.shotsBlocked,
      'cards_given': instance.cardsGiven,
      'free_kicks': instance.freeKicks,
      'offsides': instance.offsides,
      'shots_on_bar': instance.shotsOnBar,
      'goals_by_foot': instance.goalsByFoot,
      'goals_scored': instance.goalsScored,
      'goals_conceded': instance.goalsConceded,
    };

GoalAttempts _$GoalAttemptsFromJson(Map<String, dynamic> json) {
  return $checkedNew('GoalAttempts', json, () {
    final val = GoalAttempts(
      total: $checkedConvert(json, 'total', (v) => v as int),
      matches: $checkedConvert(json, 'matches', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$GoalAttemptsToJson(GoalAttempts instance) =>
    <String, dynamic>{
      'total': instance.total,
      'matches': instance.matches,
    };

PlayerStatistics _$PlayerStatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('PlayerStatistics', json, () {
    final val = PlayerStatistics(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      matchesPlayed: $checkedConvert(json, 'matches_played', (v) => v as int),
      statistics: $checkedConvert(
          json,
          'statistics',
          (v) => v == null
              ? null
              : Statistics.fromJson(v as Map<String, dynamic>)),
      minutesPlayed: $checkedConvert(json, 'minutes_played', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {
    'matchesPlayed': 'matches_played',
    'minutesPlayed': 'minutes_played'
  });
}

Map<String, dynamic> _$PlayerStatisticsToJson(PlayerStatistics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'matches_played': instance.matchesPlayed,
      'statistics': instance.statistics,
      'minutes_played': instance.minutesPlayed,
    };

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('Statistics', json, () {
    final val = Statistics(
      goalsScored: $checkedConvert(
          json,
          'goals_scored',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsOnGoal: $checkedConvert(
          json,
          'shots_on_goal',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      substitutedOut: $checkedConvert(
          json,
          'substituted_out',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      goalAttempts: $checkedConvert(
          json,
          'goal_attempts',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      offsides: $checkedConvert(
          json,
          'offsides',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      cardsGiven: $checkedConvert(
          json,
          'cards_given',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsOffGoal: $checkedConvert(
          json,
          'shots_off_goal',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      substitutedIn: $checkedConvert(
          json,
          'substituted_in',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      shotsBlocked: $checkedConvert(
          json,
          'shots_blocked',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      cornerKicks: $checkedConvert(
          json,
          'corner_kicks',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
      assists: $checkedConvert(
          json,
          'assists',
          (v) => v == null
              ? null
              : GoalAttempts.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'goalsScored': 'goals_scored',
    'shotsOnGoal': 'shots_on_goal',
    'substitutedOut': 'substituted_out',
    'goalAttempts': 'goal_attempts',
    'cardsGiven': 'cards_given',
    'shotsOffGoal': 'shots_off_goal',
    'substitutedIn': 'substituted_in',
    'shotsBlocked': 'shots_blocked',
    'cornerKicks': 'corner_kicks'
  });
}

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'goals_scored': instance.goalsScored,
      'shots_on_goal': instance.shotsOnGoal,
      'substituted_out': instance.substitutedOut,
      'goal_attempts': instance.goalAttempts,
      'offsides': instance.offsides,
      'cards_given': instance.cardsGiven,
      'shots_off_goal': instance.shotsOffGoal,
      'substituted_in': instance.substitutedIn,
      'shots_blocked': instance.shotsBlocked,
      'corner_kicks': instance.cornerKicks,
      'assists': instance.assists,
    };

GoaltimeStatistics _$GoaltimeStatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('GoaltimeStatistics', json, () {
    final val = GoaltimeStatistics(
      scored: $checkedConvert(json, 'scored',
          (v) => v == null ? null : Scored.fromJson(v as Map<String, dynamic>)),
      conceded: $checkedConvert(json, 'conceded',
          (v) => v == null ? null : Scored.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$GoaltimeStatisticsToJson(GoaltimeStatistics instance) =>
    <String, dynamic>{
      'scored': instance.scored,
      'conceded': instance.conceded,
    };

Scored _$ScoredFromJson(Map<String, dynamic> json) {
  return $checkedNew('Scored', json, () {
    final val = Scored(
      total: $checkedConvert(json, 'total', (v) => v as int),
      period: $checkedConvert(
          json,
          'period',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Period.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$ScoredToJson(Scored instance) => <String, dynamic>{
      'total': instance.total,
      'period': instance.period,
    };

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return $checkedNew('Period', json, () {
    final val = Period(
      name: $checkedConvert(json, 'name', (v) => v as String),
      value: $checkedConvert(json, 'value', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
