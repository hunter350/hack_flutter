import 'package:hackflutter/utils/dateTime.dart';
import 'network.dart';

const String baseURL = 'https://api.sportradar.us/soccer-';
const String accessLevel = 't';
const String version = '3';
const String leagueGroup = 'eu';
const String languageCode = 'en';
const String format = 'json';
const String apiKey = {your-api-key};

class Requests {

  Future<dynamic> getDailyResults(DateTime date) async {
    final String selectedDate = DateUtil.dateTimeToStringFormatter(date);
    final Network network = Network('$baseURL$accessLevel$version/$leagueGroup/$languageCode/schedules/$selectedDate/results.$format?api_key=$apiKey');
    final dynamic sportMatchesData = await network.getData();
    return sportMatchesData;
  }

  Future<dynamic> getTeamStatistics(String seasonId, String teamId) async {
    final Network network = Network('$baseURL$accessLevel$version/$leagueGroup/$languageCode/tournaments/$seasonId/teams/$teamId/statistics.$format?api_key=$apiKey');
    final dynamic seasonGoalsData = await network.getData();
    return seasonGoalsData;
  }

  Future<dynamic> getHeadToHead(String teamId1, String teamId2) async {
    final Network network = Network('$baseURL$accessLevel$version/$leagueGroup/$languageCode/teams/$teamId1/versus/$teamId2/matches.$format?api_key=$apiKey');
    final dynamic headToHeadData = await network.getData();
    return headToHeadData;
  }

  Future<dynamic> getTimeLine(String matchId) async {
    final Network network = Network('$baseURL$accessLevel$version/$leagueGroup/$languageCode/matches/$matchId/timeline.$format?api_key=$apiKey');
    final dynamic timeLineData = await network.getData();
    return timeLineData;
  }
}
