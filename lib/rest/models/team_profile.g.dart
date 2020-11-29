// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return $checkedNew('Data', json, () {
    final val = Data(
      generatedAt: $checkedConvert(json, 'generated_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      schema: $checkedConvert(json, 'schema', (v) => v as String),
      team: $checkedConvert(json, 'team',
          (v) => v == null ? null : Team.fromJson(v as Map<String, dynamic>)),
      jerseys: $checkedConvert(
          json,
          'jerseys',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Jersey.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      manager: $checkedConvert(
          json,
          'manager',
          (v) =>
              v == null ? null : Manager.fromJson(v as Map<String, dynamic>)),
      players: $checkedConvert(
          json,
          'players',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Player.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      statistics: $checkedConvert(
          json,
          'statistics',
          (v) => v == null
              ? null
              : DataStatistics.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'generatedAt': 'generated_at'});
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'schema': instance.schema,
      'team': instance.team,
      'jerseys': instance.jerseys,
      'manager': instance.manager,
      'players': instance.players,
      'statistics': instance.statistics,
    };

Jersey _$JerseyFromJson(Map<String, dynamic> json) {
  return $checkedNew('Jersey', json, () {
    final val = Jersey(
      type: $checkedConvert(json, 'type', (v) => v as String),
      base: $checkedConvert(json, 'base', (v) => v as String),
      sleeve: $checkedConvert(json, 'sleeve', (v) => v as String),
      number: $checkedConvert(json, 'number', (v) => v as String),
      squares: $checkedConvert(json, 'squares', (v) => v as bool),
      stripes: $checkedConvert(json, 'stripes', (v) => v as bool),
      horizontalStripes:
          $checkedConvert(json, 'horizontal_stripes', (v) => v as bool),
      split: $checkedConvert(json, 'split', (v) => v as bool),
      shirtType: $checkedConvert(json, 'shirt_type', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'horizontalStripes': 'horizontal_stripes',
    'shirtType': 'shirt_type'
  });
}

Map<String, dynamic> _$JerseyToJson(Jersey instance) => <String, dynamic>{
      'type': instance.type,
      'base': instance.base,
      'sleeve': instance.sleeve,
      'number': instance.number,
      'squares': instance.squares,
      'stripes': instance.stripes,
      'horizontal_stripes': instance.horizontalStripes,
      'split': instance.split,
      'shirt_type': instance.shirtType,
    };

Manager _$ManagerFromJson(Map<String, dynamic> json) {
  return $checkedNew('Manager', json, () {
    final val = Manager(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      nationality: $checkedConvert(json, 'nationality', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'countryCode': 'country_code'});
}

Map<String, dynamic> _$ManagerToJson(Manager instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
      'country_code': instance.countryCode,
    };

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return $checkedNew('Player', json, () {
    final val = Player(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      dateOfBirth: $checkedConvert(json, 'date_of_birth',
          (v) => v == null ? null : DateTime.parse(v as String)),
      nationality: $checkedConvert(json, 'nationality', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
      height: $checkedConvert(json, 'height', (v) => v as int),
      weight: $checkedConvert(json, 'weight', (v) => v as int),
      jerseyNumber: $checkedConvert(json, 'jersey_number', (v) => v as int),
      gender: $checkedConvert(json, 'gender', (v) => v as String),
      preferredFoot:
          $checkedConvert(json, 'preferred_foot', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'dateOfBirth': 'date_of_birth',
    'countryCode': 'country_code',
    'jerseyNumber': 'jersey_number',
    'preferredFoot': 'preferred_foot'
  });
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'nationality': instance.nationality,
      'country_code': instance.countryCode,
      'height': instance.height,
      'weight': instance.weight,
      'jersey_number': instance.jerseyNumber,
      'gender': instance.gender,
      'preferred_foot': instance.preferredFoot,
    };

DataStatistics _$DataStatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('DataStatistics', json, () {
    final val = DataStatistics(
      seasons: $checkedConvert(
          json,
          'seasons',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Season.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$DataStatisticsToJson(DataStatistics instance) =>
    <String, dynamic>{
      'seasons': instance.seasons,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return $checkedNew('Season', json, () {
    final val = Season(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      statistics: $checkedConvert(
          json,
          'statistics',
          (v) => v == null
              ? null
              : SeasonStatistics.fromJson(v as Map<String, dynamic>)),
      tournament: $checkedConvert(
          json,
          'tournament',
          (v) => v == null
              ? null
              : Tournament.fromJson(v as Map<String, dynamic>)),
      form: $checkedConvert(json, 'form',
          (v) => v == null ? null : Form.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'statistics': instance.statistics,
      'tournament': instance.tournament,
      'form': instance.form,
    };

Form _$FormFromJson(Map<String, dynamic> json) {
  return $checkedNew('Form', json, () {
    final val = Form(
      total: $checkedConvert(json, 'total', (v) => v as String),
      home: $checkedConvert(json, 'home', (v) => v as String),
      away: $checkedConvert(json, 'away', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$FormToJson(Form instance) => <String, dynamic>{
      'total': instance.total,
      'home': instance.home,
      'away': instance.away,
    };

SeasonStatistics _$SeasonStatisticsFromJson(Map<String, dynamic> json) {
  return $checkedNew('SeasonStatistics', json, () {
    final val = SeasonStatistics(
      matchesPlayed: $checkedConvert(json, 'matches_played', (v) => v as int),
      matchesWon: $checkedConvert(json, 'matches_won', (v) => v as int),
      matchesDrawn: $checkedConvert(json, 'matches_drawn', (v) => v as int),
      matchesLost: $checkedConvert(json, 'matches_lost', (v) => v as int),
      goalsScored: $checkedConvert(json, 'goals_scored', (v) => v as int),
      goalsConceded: $checkedConvert(json, 'goals_conceded', (v) => v as int),
      groupName: $checkedConvert(json, 'group_name', (v) => v as String),
      cupRank: $checkedConvert(json, 'cup_rank', (v) => v as int),
      groupPosition: $checkedConvert(json, 'group_position', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {
    'matchesPlayed': 'matches_played',
    'matchesWon': 'matches_won',
    'matchesDrawn': 'matches_drawn',
    'matchesLost': 'matches_lost',
    'goalsScored': 'goals_scored',
    'goalsConceded': 'goals_conceded',
    'groupName': 'group_name',
    'cupRank': 'cup_rank',
    'groupPosition': 'group_position'
  });
}

Map<String, dynamic> _$SeasonStatisticsToJson(SeasonStatistics instance) =>
    <String, dynamic>{
      'matches_played': instance.matchesPlayed,
      'matches_won': instance.matchesWon,
      'matches_drawn': instance.matchesDrawn,
      'matches_lost': instance.matchesLost,
      'goals_scored': instance.goalsScored,
      'goals_conceded': instance.goalsConceded,
      'group_name': instance.groupName,
      'cup_rank': instance.cupRank,
      'group_position': instance.groupPosition,
    };
