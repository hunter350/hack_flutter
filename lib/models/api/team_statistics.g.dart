// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    generatedAt: json['generated_at'] as String,
    schema: json['schema'] as String,
    tournament: json['tournament'] == null
        ? null
        : Tournament.fromJson(json['tournament'] as Map<String, dynamic>),
    team: json['team'] == null
        ? null
        : Team.fromJson(json['team'] as Map<String, dynamic>),
    teamSeasonCoverage: json['team_season_coverage'] == null
        ? null
        : TeamSeasonCoverage.fromJson(
            json['team_season_coverage'] as Map<String, dynamic>),
    teamStatistics: json['team_statistics'] == null
        ? null
        : TeamStatistics.fromJson(
            json['team_statistics'] as Map<String, dynamic>),
    playerStatistics: (json['player_statistics'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerStatistics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goaltimeStatistics: json['goaltime_statistics'] == null
        ? null
        : GoaltimeStatistics.fromJson(
            json['goaltime_statistics'] as Map<String, dynamic>),
  );
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
  return Tournament(
    id: json['id'] as String,
    name: json['name'] as String,
    sport: json['sport'] == null
        ? null
        : Sport.fromJson(json['sport'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : Sport.fromJson(json['category'] as Map<String, dynamic>),
    currentSeason: json['current_season'] == null
        ? null
        : CurrentSeason.fromJson(
            json['current_season'] as Map<String, dynamic>),
  );
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
  return Sport(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$SportToJson(Sport instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CurrentSeason _$CurrentSeasonFromJson(Map<String, dynamic> json) {
  return CurrentSeason(
    id: json['id'] as String,
    name: json['name'] as String,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
    year: json['year'] as String,
  );
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
  return Team(
    id: json['id'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    countryCode: json['country_code'] as String,
    sport: json['sport'] == null
        ? null
        : Sport.fromJson(json['sport'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : Sport.fromJson(json['category'] as Map<String, dynamic>),
    abbreviation: json['abbreviation'] as String,
  );
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
  return Category(
    id: json['id'] as String,
    name: json['name'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_code': instance.countryCode,
    };

TeamSeasonCoverage _$TeamSeasonCoverageFromJson(Map<String, dynamic> json) {
  return TeamSeasonCoverage(
    scheduled: json['scheduled'] as int,
    played: json['played'] as int,
    platinum: json['platinum'] as int,
    gold: json['gold'] as int,
  );
}

Map<String, dynamic> _$TeamSeasonCoverageToJson(TeamSeasonCoverage instance) =>
    <String, dynamic>{
      'scheduled': instance.scheduled,
      'played': instance.played,
      'platinum': instance.platinum,
      'gold': instance.gold,
    };

TeamStatistics _$TeamStatisticsFromJson(Map<String, dynamic> json) {
  return TeamStatistics(
    matchesPlayed: json['matches_played'] as int,
    matchesWon: json['matches_won'] as int,
    form: json['form'] as String,
    goalAttempts: json['goal_attempts'] == null
        ? null
        : GoalAttempts.fromJson(json['goal_attempts'] as Map<String, dynamic>),
    shotsOnGoal: json['shots_on_goal'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_on_goal'] as Map<String, dynamic>),
    shotsOffGoal: json['shots_off_goal'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_off_goal'] as Map<String, dynamic>),
    cornerKicks: json['corner_kicks'] == null
        ? null
        : GoalAttempts.fromJson(json['corner_kicks'] as Map<String, dynamic>),
    ballPossession: json['ball_possession'] == null
        ? null
        : GoalAttempts.fromJson(
            json['ball_possession'] as Map<String, dynamic>),
    shotsBlocked: json['shots_blocked'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_blocked'] as Map<String, dynamic>),
    cardsGiven: json['cards_given'] == null
        ? null
        : GoalAttempts.fromJson(json['cards_given'] as Map<String, dynamic>),
    freeKicks: json['free_kicks'] == null
        ? null
        : GoalAttempts.fromJson(json['free_kicks'] as Map<String, dynamic>),
    offsides: json['offsides'] == null
        ? null
        : GoalAttempts.fromJson(json['offsides'] as Map<String, dynamic>),
    shotsOnBar: json['shots_on_bar'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_on_bar'] as Map<String, dynamic>),
    goalsByFoot: json['goals_by_foot'] == null
        ? null
        : GoalAttempts.fromJson(json['goals_by_foot'] as Map<String, dynamic>),
    goalsScored: json['goals_scored'] == null
        ? null
        : GoalAttempts.fromJson(json['goals_scored'] as Map<String, dynamic>),
    goalsConceded: json['goals_conceded'] == null
        ? null
        : GoalAttempts.fromJson(json['goals_conceded'] as Map<String, dynamic>),
  );
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
  return GoalAttempts(
    total: json['total'] as int,
    matches: json['matches'] as int,
  );
}

Map<String, dynamic> _$GoalAttemptsToJson(GoalAttempts instance) =>
    <String, dynamic>{
      'total': instance.total,
      'matches': instance.matches,
    };

PlayerStatistics _$PlayerStatisticsFromJson(Map<String, dynamic> json) {
  return PlayerStatistics(
    id: json['id'] as String,
    name: json['name'] as String,
    matchesPlayed: json['matches_played'] as int,
    statistics: json['statistics'] == null
        ? null
        : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    minutesPlayed: json['minutes_played'] as int,
  );
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
  return Statistics(
    goalsScored: json['goals_scored'] == null
        ? null
        : GoalAttempts.fromJson(json['goals_scored'] as Map<String, dynamic>),
    shotsOnGoal: json['shots_on_goal'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_on_goal'] as Map<String, dynamic>),
    substitutedOut: json['substituted_out'] == null
        ? null
        : GoalAttempts.fromJson(
            json['substituted_out'] as Map<String, dynamic>),
    goalAttempts: json['goal_attempts'] == null
        ? null
        : GoalAttempts.fromJson(json['goal_attempts'] as Map<String, dynamic>),
    offsides: json['offsides'] == null
        ? null
        : GoalAttempts.fromJson(json['offsides'] as Map<String, dynamic>),
    cardsGiven: json['cards_given'] == null
        ? null
        : GoalAttempts.fromJson(json['cards_given'] as Map<String, dynamic>),
    shotsOffGoal: json['shots_off_goal'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_off_goal'] as Map<String, dynamic>),
    substitutedIn: json['substituted_in'] == null
        ? null
        : GoalAttempts.fromJson(json['substituted_in'] as Map<String, dynamic>),
    shotsBlocked: json['shots_blocked'] == null
        ? null
        : GoalAttempts.fromJson(json['shots_blocked'] as Map<String, dynamic>),
    cornerKicks: json['corner_kicks'] == null
        ? null
        : GoalAttempts.fromJson(json['corner_kicks'] as Map<String, dynamic>),
    assists: json['assists'] == null
        ? null
        : GoalAttempts.fromJson(json['assists'] as Map<String, dynamic>),
  );
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
  return GoaltimeStatistics(
    scored: json['scored'] == null
        ? null
        : Scored.fromJson(json['scored'] as Map<String, dynamic>),
    conceded: json['conceded'] == null
        ? null
        : Scored.fromJson(json['conceded'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GoaltimeStatisticsToJson(GoaltimeStatistics instance) =>
    <String, dynamic>{
      'scored': instance.scored,
      'conceded': instance.conceded,
    };

Scored _$ScoredFromJson(Map<String, dynamic> json) {
  return Scored(
    total: json['total'] as int,
    period: (json['period'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ScoredToJson(Scored instance) => <String, dynamic>{
      'total': instance.total,
      'period': instance.period,
    };

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return Period(
    name: json['name'] as String,
    value: json['value'] as int,
  );
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
