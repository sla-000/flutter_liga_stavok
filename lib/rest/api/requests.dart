import 'dart:convert';

import 'package:flutter_liga_stavok/rest/api/network.dart';
import 'package:flutter_liga_stavok/rest/models/daily_results.dart'
    as daylyResults;
import 'package:flutter_liga_stavok/rest/models/daily_schedule.dart'
    as dailySchedule;
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart' as head2Head;
import 'package:flutter_liga_stavok/rest/models/team_statistics.dart'
    as teatStatistics;
import 'package:flutter_liga_stavok/utils/dateTime.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Requests');

const String baseURL = 'https://api.sportradar.us/soccer-';
const String accessLevel = 't';
const String version = '3';
const String leagueGroup = 'intl';
const String languageCode = 'en';
const String format = 'json';
const String apiKey = 'vcjswdawy7hsdhmtzvr8wmat';

const String urlPrefix = '$baseURL$accessLevel$version'
    '/$leagueGroup'
    '/$languageCode';
const String urlSuffix = '?api_key=$apiKey';

final DateTime selectedDate = DateUtil.stringToDateFormatter('2018-06-15');

/// Throws:
/// - some json decode errors
/// - Http errors
Future<daylyResults.Data> getDailyResults(DateTime date) async {
  _log.finest(() => 'getDailyResults: date=$date');

  final String selectedDate = DateUtil.dateTimeToStringFormatter(date);

  final Network network = Network('$urlPrefix'
      '/schedules/$selectedDate'
      '/results.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();

  final dynamic data = json.decode(dataStr);
  final daylyResults.Data parsedData =
      daylyResults.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<teatStatistics.Data> getTeamStatistics(
    String seasonId, String teamId) async {
  _log.finest(() => 'getTeamStatistics: seasonId=$seasonId, teamId=$teamId');

  final Network network = Network('$urlPrefix'
      '/tournaments/$seasonId'
      '/teams/$teamId'
      '/statistics.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();

  final dynamic data = json.decode(dataStr);
  final teatStatistics.Data parsedData =
      teatStatistics.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<dailySchedule.Data> getDailySchedule(DateTime date) async {
  _log.finest(() => 'getDailySchedule: date=$date');

  final String selectedDate = DateUtil.dateTimeToStringFormatter(date);

  final Network network = Network('$urlPrefix'
      '/schedules/$selectedDate'
      '/schedule.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();

  final dynamic data = json.decode(dataStr);
  final dailySchedule.Data parsedData =
      dailySchedule.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<head2Head.Data> getHead2Head(
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

  final dynamic data = json.decode(dataStr);
  final head2Head.Data parsedData =
      head2Head.Data.fromJson(data as Map<String, dynamic>);
  return parsedData;
}

Future<String> getMatchTimeline(String matchId) async {
  _log.finest(() => 'getHead2Head: matchId=$matchId');

  final Network network = Network('$urlPrefix'
      '/matches/$matchId'
      '/summary.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();

  // final dynamic data = json.decode(dataStr);
  // final head2Head.Data parsedData =
  //     head2Head.Data.fromJson(data as Map<String, dynamic>);
  // return parsedData;
  return dataStr;
}
