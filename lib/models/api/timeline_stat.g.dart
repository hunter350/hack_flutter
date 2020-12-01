// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    generatedAt: json['generated_at'] as String,
    schema: json['schema'] as String,
    sportEvent: json['sport_event'] == null
        ? null
        : SportEvent.fromJson(json['sport_event'] as Map<String, dynamic>),
    sportEventConditions: json['sport_event_conditions'] == null
        ? null
        : SportEventConditions.fromJson(
            json['sport_event_conditions'] as Map<String, dynamic>),
    sportEventStatus: json['sport_event_status'] == null
        ? null
        : SportEventStatus.fromJson(
            json['sport_event_status'] as Map<String, dynamic>),
    coverageInfo: json['coverage_info'] == null
        ? null
        : CoverageInfo.fromJson(json['coverage_info'] as Map<String, dynamic>),
    timeline: (json['timeline'] as List)
        ?.map((e) =>
            e == null ? null : TimeLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    statistics: json['statistics'] == null
        ? null
        : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'generated_at': instance.generatedAt,
      'schema': instance.schema,
      'sport_event': instance.sportEvent,
      'sport_event_conditions': instance.sportEventConditions,
      'sport_event_status': instance.sportEventStatus,
      'coverage_info': instance.coverageInfo,
      'timeline': instance.timeline,
      'statistics': instance.statistics,
    };

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return SportEvent(
    id: json['id'] as String,
    scheduled: json['scheduled'] as String,
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
        ?.map((e) =>
            e == null ? null : Competitors.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    venue: json['venue'] == null
        ? null
        : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  );
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
  return TournamentRound(
    type: json['type'] as String,
    number: json['number'] as int,
    name: json['name'] as String,
    cupRoundMatchNumber: json['cup_round_match_number'] as int,
    cupRoundMatches: json['cup_round_matches'] as int,
    otherMatchId: json['other_match_id'] as String,
    phase: json['phase'] as String,
  );
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
  return Season(
    id: json['id'] as String,
    name: json['name'] as String,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
    year: json['year'] as String,
    tournamentId: json['tournament_id'] as String,
  );
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
  return Tournament(
    id: json['id'] as String,
    name: json['name'] as String,
    sport: json['sport'] == null
        ? null
        : Sport.fromJson(json['sport'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : Sport.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TournamentToJson(Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sport': instance.sport,
      'category': instance.category,
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

Competitors _$CompetitorsFromJson(Map<String, dynamic> json) {
  return Competitors(
    id: json['id'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    countryCode: json['country_code'] as String,
    abbreviation: json['abbreviation'] as String,
    qualifier: json['qualifier'] as String,
  );
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

SportEventConditions _$SportEventConditionsFromJson(Map<String, dynamic> json) {
  return SportEventConditions(
    venue: json['venue'] == null
        ? null
        : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  )..referee = json['referee'] == null
      ? null
      : Referee.fromJson(json['referee'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SportEventConditionsToJson(
        SportEventConditions instance) =>
    <String, dynamic>{
      'referee': instance.referee,
      'venue': instance.venue,
    };

Referee _$RefereeFromJson(Map<String, dynamic> json) {
  return Referee(
    id: json['id'] as String,
    name: json['name'] as String,
    nationality: json['nationality'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$RefereeToJson(Referee instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
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
            e == null ? null : PeriodScores.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ballLocations: (json['ball_locations'] as List)
        ?.map((e) => e == null
            ? null
            : BallLocations.fromJson(e as Map<String, dynamic>))
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
      'ball_locations': instance.ballLocations,
    };

PeriodScores _$PeriodScoresFromJson(Map<String, dynamic> json) {
  return PeriodScores(
    homeScore: json['home_score'] as int,
    awayScore: json['away_score'] as int,
    type: json['type'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$PeriodScoresToJson(PeriodScores instance) =>
    <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };

BallLocations _$BallLocationsFromJson(Map<String, dynamic> json) {
  return BallLocations(
    x: json['x'] as String,
    y: json['y'] as String,
    team: json['team'] as String,
  );
}

Map<String, dynamic> _$BallLocationsToJson(BallLocations instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'team': instance.team,
    };

CoverageInfo _$CoverageInfoFromJson(Map<String, dynamic> json) {
  return CoverageInfo(
    level: json['level'] as String,
    liveCoverage: json['live_coverage'] as bool,
    coverage: json['coverage'] == null
        ? null
        : Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageInfoToJson(CoverageInfo instance) =>
    <String, dynamic>{
      'level': instance.level,
      'live_coverage': instance.liveCoverage,
      'coverage': instance.coverage,
    };

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return Coverage(
    basicScore: json['basic_score'] as bool,
    keyEvents: json['key_events'] as bool,
    detailedEvents: json['detailed_events'] as bool,
    lineups: json['lineups'] as bool,
    commentary: json['commentary'] as bool,
  );
}

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
      'basic_score': instance.basicScore,
      'key_events': instance.keyEvents,
      'detailed_events': instance.detailedEvents,
      'lineups': instance.lineups,
      'commentary': instance.commentary,
    };

TimeLine _$TimeLineFromJson(Map<String, dynamic> json) {
  return TimeLine(
    id: json['id'] as int,
    type: json['type'] as String,
    time: json['time'] as String,
    commentaries: (json['commentaries'] as List)
        ?.map((e) =>
            e == null ? null : Commentary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    matchTime: json['match_time'] as int,
    matchClock: json['match_clock'] as String,
    team: json['team'] as String,
    x: json['x'] as int,
    y: json['y'] as int,
    period: json['period'] as int,
    periodType: json['period_type'] as String,
    homeScore: json['home_score'] as int,
    awayScore: json['away_score'] as int,
    goalScorer: json['goal_scorer'] == null
        ? null
        : GoalScorer.fromJson(json['goal_scorer'] as Map<String, dynamic>),
    assist: json['assist'] == null
        ? null
        : Assist.fromJson(json['assist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TimeLineToJson(TimeLine instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'time': instance.time,
      'commentaries': instance.commentaries,
      'match_time': instance.matchTime,
      'match_clock': instance.matchClock,
      'team': instance.team,
      'x': instance.x,
      'y': instance.y,
      'period': instance.period,
      'period_type': instance.periodType,
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'goal_scorer': instance.goalScorer,
      'assist': instance.assist,
    };

Commentary _$CommentaryFromJson(Map<String, dynamic> json) {
  return Commentary(
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$CommentaryToJson(Commentary instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

GoalScorer _$GoalScorerFromJson(Map<String, dynamic> json) {
  return GoalScorer(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$GoalScorerToJson(GoalScorer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Assist _$AssistFromJson(Map<String, dynamic> json) {
  return Assist(
    id: json['id'] as String,
    type: json['type'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AssistToJson(Assist instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
    };

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return Statistics(
    teams: (json['teams'] as List)
        ?.map(
            (e) => e == null ? null : Team.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team(
    id: json['id'] as String,
    name: json['name'] as String,
    abbreviation: json['abbreviation'] as String,
    qualifier: json['qualifier'] as String,
    statistic: json['statistic'] == null
        ? null
        : Statistic.fromJson(json['statistic'] as Map<String, dynamic>),
    players: (json['players'] as List)
        ?.map((e) =>
            e == null ? null : Player.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
      'statistic': instance.statistic,
      'players': instance.players,
    };

Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return Statistic(
    throwIns: json['throw_ins'] as int,
    shotsSaved: json['shots_saved'] as int,
    goalKicks: json['goal_kicks'] as int,
    fouls: json['fouls'] as int,
    freeKicks: json['free_kicks'] as int,
    shotsOnTarget: json['shots_on_target'] as int,
    ballPossession: json['ball_possession'] as int,
    shotsOffTarget: json['shots_off_target'] as int,
    yellowCards: json['yellow_cards'] as int,
    redCards: json['red_cards'] as int,
    injuries: json['injuries'] as int,
  );
}

Map<String, dynamic> _$StatisticToJson(Statistic instance) => <String, dynamic>{
      'throw_ins': instance.throwIns,
      'shots_saved': instance.shotsSaved,
      'goal_kicks': instance.goalKicks,
      'fouls': instance.fouls,
      'free_kicks': instance.freeKicks,
      'shots_on_target': instance.shotsOnTarget,
      'ball_possession': instance.ballPossession,
      'shots_off_target': instance.shotsOffTarget,
      'yellow_cards': instance.yellowCards,
      'red_cards': instance.redCards,
      'injuries': instance.injuries,
    };

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
    id: json['id'] as String,
    name: json['name'] as String,
    substitutedIn: json['substituted_in'] as int,
    substitutedOut: json['substituted_out'] as int,
    goalsScored: json['goals_scored'] as int,
    assists: json['assists'] as int,
    ownGoals: json['own_goals'] as int,
    yellowCards: json['yellow_cards'] as int,
    yellowRedCards: json['yellow_red_cards'] as int,
    redCards: json['red_cards'] as int,
  );
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'substituted_in': instance.substitutedIn,
      'substituted_out': instance.substitutedOut,
      'goals_scored': instance.goalsScored,
      'assists': instance.assists,
      'own_goals': instance.ownGoals,
      'yellow_cards': instance.yellowCards,
      'yellow_red_cards': instance.yellowRedCards,
      'red_cards': instance.redCards,
    };
