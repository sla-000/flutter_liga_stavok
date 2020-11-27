import 'dart:convert';

import 'package:flutter_liga_stavok/rest/api/network.dart';
import 'package:flutter_liga_stavok/rest/models/daily_results.dart';
import 'package:flutter_liga_stavok/utils/dateTime.dart';

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
Future<Data> getDailyResults(DateTime date) async {
  final String selectedDate = DateUtil.dateTimeToStringFormatter(date);
  final Network network = Network('$urlPrefix'
      '/schedules/$selectedDate/results.$format'
      '$urlSuffix');

  final String dataStr = await network.getData();

  final dynamic data = json.decode(dataStr);
  final Data dailyResults = Data.fromJson(data as Map<String, dynamic>);
  return dailyResults;
}

Future<String> getTeamStatistics(String seasonId, String teamId) async {
  final Network network = Network('$urlPrefix'
      '/tournaments/$seasonId/teams/$teamId/statistics.$format'
      '$urlSuffix');
  return await network.getData();
}
