import 'dart:convert';

import 'package:flutter_liga_stavok/rest/api/network.dart';
import 'package:flutter_liga_stavok/rest/models/daily_results.dart'
    as daily_results;
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as daily_schedule;
import 'package:flutter_liga_stavok/rest/models/fun_facts.dart' as fun_facts;
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:flutter_liga_stavok/rest/models/live_results.dart'
    as live_results;
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:flutter_liga_stavok/rest/models/match_summary.dart'
    as match_summary;
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:flutter_liga_stavok/rest/models/team_statistics.dart'
    as team_statistics;
import 'package:flutter_liga_stavok/utils/dateTime.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Requests');

const String kLeagueIntl = 'intl';
const String kLeagueEu = 'eu';
const String kLeagueAm = 'am';
const String kLeagueAs = 'as';
const String kLeagueOther = 'other';

const Map<String, String> kApiKeys = <String, String>{
  kLeagueIntl: 'vcjswdawy7hsdhmtzvr8wmat',
  kLeagueEu: 'sk3zgmech3qczd3cv73ygdac',
  kLeagueAm: 'en28eps3wz4kn8u6ceghs2a3',
  kLeagueAs: 'efyt9dsvhtmftyr467fh4nqn',
  kLeagueOther: 'munfax98aan88s2tguubrkuz',
};

String requestLeagueName = kLeagueIntl;

const String baseURL = 'https://api.sportradar.us/soccer-';
const String accessLevel = 't';
const String version = '3';
const String languageCode = 'en';
const String format = 'json';
const String apiKey = 'vcjswdawy7hsdhmtzvr8wmat';

String get urlPrefix => '$baseURL$accessLevel$version'
    '/$requestLeagueName'
    '/$languageCode';
String get urlSuffix => '?api_key=${kApiKeys[requestLeagueName]}';

final DateTime selectedDate = DateUtil.stringToDateFormatter('2018-06-15');

Future<daily_results.Data> getDailyResults(DateTime date) async {
  _log.finest(() => 'getDailyResults: date=$date');

  final String selectedDate = DateUtil.dateTimeToStringFormatter(date);

  final Network network = Network('$urlPrefix'
      '/schedules/$selectedDate'
      '/results.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final daily_results.Data parsedData =
      daily_results.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<team_statistics.Data> getTeamStatistics(
    String seasonId, String teamId) async {
  _log.finest(() => 'getTeamStatistics: seasonId=$seasonId, teamId=$teamId');

  final Network network = Network('$urlPrefix'
      '/tournaments/$seasonId'
      '/teams/$teamId'
      '/statistics.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final team_statistics.Data parsedData =
      team_statistics.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<daily_schedule.Data> getDailySchedule(DateTime date) async {
  _log.finest(() => 'getDailySchedule: date=$date');

  final String selectedDate = DateUtil.dateTimeToStringFormatter(date);

  final Network network = Network('$urlPrefix'
      '/schedules/$selectedDate'
      '/schedule.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final daily_schedule.Data parsedData =
      daily_schedule.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<head_2_head.Data> getHead2Head(
  String teamHomeId,
  String teamAwayId,
) async {
  _log.finest(() => 'getHead2Head: teamHome=$teamHomeId, teamAway=$teamAwayId');

  final Network network = Network('$urlPrefix'
      '/teams/$teamHomeId'
      '/versus/$teamAwayId'
      '/matches.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final head_2_head.Data parsedData =
      head_2_head.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<match_probabilities.Data> getMatchProbabilities(String matchId) async {
  _log.finest(() => 'getMatchProbabilities: matchId=$matchId');

  final Network network = Network('$urlPrefix'
      '/matches/$matchId'
      '/probabilities.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final match_probabilities.Data parsedData =
      match_probabilities.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<live_results.Data> getLiveResults() async {
  _log.finest(() => 'getLiveResults:');

  final Network network = Network('$urlPrefix'
      '/schedules'
      '/live'
      '/results.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final live_results.Data parsedData =
      live_results.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<fun_facts.Data> getFunFacts(String matchId) async {
  _log.finest(() => 'getFunFacts: matchId=$matchId');

  final Network network = Network('$urlPrefix'
      '/matches'
      '/$matchId'
      '/funfacts.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final fun_facts.Data parsedData =
      fun_facts.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<team_profile.Data> getTeamProfile(String teamId) async {
  _log.finest(() => 'getFunFacts: teamId=$teamId');

  final Network network = Network('$urlPrefix'
      '/teams'
      '/$teamId'
      '/profile.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final team_profile.Data parsedData =
      team_profile.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<match_summary.Data> getMatchSummary(String matchId) async {
  _log.finest(() => 'getMatchSummary: matchId=$matchId');

  final Network network = Network('$urlPrefix'
      '/matches/$matchId'
      '/summary.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();
  if (dataStr == null) {
    return null;
  }

  final dynamic data = json.decode(dataStr);
  final match_summary.Data parsedData =
      match_summary.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

// Future<String> getMatchTimeline(String matchId) async {
//   _log.finest(() => 'getHead2Head: matchId=$matchId');
//
//   final Network network = Network('$urlPrefix'
//       '/matches/$matchId'
//       '/summary.$format'
//       '$urlSuffix');
//
//   final String dataStr = await network.getData();
// if( dataStr == null ) {
// return null;
// }
//
//   // final dynamic data = json.decode(dataStr);
//   // final head2Head.Data parsedData =
//   //     head2Head.Data.fromJson(data as Map<String, dynamic>);
//   // return parsedData;
//   return dataStr;
// }
