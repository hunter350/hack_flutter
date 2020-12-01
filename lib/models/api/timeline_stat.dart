import 'package:json_annotation/json_annotation.dart';

part 'timeline_stat.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Data {
  String generatedAt;
  String schema;
  SportEvent sportEvent;
  SportEventConditions sportEventConditions;
  SportEventStatus sportEventStatus;
  CoverageInfo coverageInfo;
  List<TimeLine> timeline;
  Statistics statistics;

  Data(
      {this.generatedAt,
      this.schema,
      this.sportEvent,
      this.sportEventConditions,
      this.sportEventStatus,
      this.coverageInfo,
      this.timeline,
      this.statistics});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEvent {
  String id;
  String scheduled;
  bool startTimeTbd;
  TournamentRound tournamentRound;
  Season season;
  Tournament tournament;
  List<Competitors> competitors;
  Venue venue;

  SportEvent(
      {this.id,
      this.scheduled,
      this.startTimeTbd,
      this.tournamentRound,
      this.season,
      this.tournament,
      this.competitors,
      this.venue});

  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TournamentRound {
  String type;
  int number;
  String name;
  int cupRoundMatchNumber;
  int cupRoundMatches;
  String otherMatchId;
  String phase;

  TournamentRound(
      {this.type,
      this.number,
      this.name,
      this.cupRoundMatchNumber,
      this.cupRoundMatches,
      this.otherMatchId,
      this.phase});

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      _$TournamentRoundFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentRoundToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Season {
  String id;
  String name;
  String startDate;
  String endDate;
  String year;
  String tournamentId;

  Season(
      {this.id,
      this.name,
      this.startDate,
      this.endDate,
      this.year,
      this.tournamentId});

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tournament {
  String id;
  String name;
  Sport sport;
  Sport category;

  Tournament({this.id, this.name, this.sport, this.category});

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Sport {
  String id;
  String name;

  Sport({this.id, this.name});

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);

  Map<String, dynamic> toJson() => _$SportToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Competitors {
  String id;
  String name;
  String country;
  String countryCode;
  String abbreviation;
  String qualifier;

  Competitors(
      {this.id,
      this.name,
      this.country,
      this.countryCode,
      this.abbreviation,
      this.qualifier});

  factory Competitors.fromJson(Map<String, dynamic> json) =>
      _$CompetitorsFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitorsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  String id;
  String name;
  int capacity;
  String cityName;
  String countryName;
  String mapCoordinates;
  String countryCode;

  Venue(
      {this.id,
      this.name,
      this.capacity,
      this.cityName,
      this.countryName,
      this.mapCoordinates,
      this.countryCode});

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEventConditions {
  Referee referee;
  Venue venue;

  SportEventConditions({this.venue});

  factory SportEventConditions.fromJson(Map<String, dynamic> json) =>
      _$SportEventConditionsFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventConditionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Referee {
  String id;
  String name;
  String nationality;
  String countryCode;

  Referee({this.id, this.name, this.nationality, this.countryCode});

  factory Referee.fromJson(Map<String, dynamic> json) =>
      _$RefereeFromJson(json);

  Map<String, dynamic> toJson() => _$RefereeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEventStatus {
  String status;
  String matchStatus;
  int homeScore;
  int awayScore;
  String winnerId;
  List<PeriodScores> periodScores;
  List<BallLocations> ballLocations;

  SportEventStatus(
      {this.status,
      this.matchStatus,
      this.homeScore,
      this.awayScore,
      this.winnerId,
      this.periodScores,
      this.ballLocations});

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SportEventStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PeriodScores {
  int homeScore;
  int awayScore;
  String type;
  int number;

  PeriodScores({this.homeScore, this.awayScore, this.type, this.number});

  factory PeriodScores.fromJson(Map<String, dynamic> json) =>
      _$PeriodScoresFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodScoresToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BallLocations {
  String x;
  String y;
  String team;

  BallLocations({this.x, this.y, this.team});

  factory BallLocations.fromJson(Map<String, dynamic> json) =>
      _$BallLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$BallLocationsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CoverageInfo {
  String level;
  bool liveCoverage;
  Coverage coverage;

  CoverageInfo({
    this.level,
    this.liveCoverage,
    this.coverage,
  });

  factory CoverageInfo.fromJson(Map<String, dynamic> json) =>
      _$CoverageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CoverageInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Coverage {
  bool basicScore;
  bool keyEvents;
  bool detailedEvents;
  bool lineups;
  bool commentary;

  Coverage({
    this.basicScore,
    this.keyEvents,
    this.detailedEvents,
    this.lineups,
    this.commentary,
  });

  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);

  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TimeLine {
  int id;
  String type;
  String time;
  List<Commentary> commentaries;
  int matchTime;
  String matchClock;
  String team;
  int x;
  int y;
  int period;
  String periodType;
  int homeScore;
  int awayScore;
  GoalScorer goalScorer;
  Assist assist;

  TimeLine(
      {this.id,
      this.type,
      this.time,
      this.commentaries,
      this.matchTime,
      this.matchClock,
      this.team,
      this.x,
      this.y,
      this.period,
      this.periodType,
      this.homeScore,
      this.awayScore,
      this.goalScorer,
      this.assist});

  factory TimeLine.fromJson(Map<String, dynamic> json) =>
      _$TimeLineFromJson(json);

  Map<String, dynamic> toJson() => _$TimeLineToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Commentary {
  String text;

  Commentary({this.text});

  factory Commentary.fromJson(Map<String, dynamic> json) =>
      _$CommentaryFromJson(json);

  Map<String, dynamic> toJson() => _$CommentaryToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GoalScorer {
  String id;
  String name;

  GoalScorer({this.id, this.name});

  factory GoalScorer.fromJson(Map<String, dynamic> json) =>
      _$GoalScorerFromJson(json);

  Map<String, dynamic> toJson() => _$GoalScorerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Assist {
  String id;
  String type;
  String name;

  Assist({this.id, this.type, this.name});

  factory Assist.fromJson(Map<String, dynamic> json) => _$AssistFromJson(json);

  Map<String, dynamic> toJson() => _$AssistToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistics {
  List<Team> teams;

  Statistics({this.teams});

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  String id;
  String name;
  String abbreviation;
  String qualifier;
  Statistic statistic;
  List<Player> players;

  Team(
      {this.id,
      this.name,
      this.abbreviation,
      this.qualifier,
      this.statistic,
      this.players});

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistic {
  int throwIns;
  int shotsSaved;
  int goalKicks;
  int fouls;
  int freeKicks;
  int shotsOnTarget;
  int ballPossession;
  int shotsOffTarget;
  int yellowCards;
  int redCards;
  int injuries;

  Statistic(
      {this.throwIns,
      this.shotsSaved,
      this.goalKicks,
      this.fouls,
      this.freeKicks,
      this.shotsOnTarget,
      this.ballPossession,
      this.shotsOffTarget,
      this.yellowCards,
      this.redCards,
      this.injuries});

  factory Statistic.fromJson(Map<String, dynamic> json) =>
      _$StatisticFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Player {
  String id;
  String name;
  int substitutedIn;
  int substitutedOut;
  int goalsScored;
  int assists;
  int ownGoals;
  int yellowCards;
  int yellowRedCards;
  int redCards;

  Player(
      {this.id,
      this.name,
      this.substitutedIn,
      this.substitutedOut,
      this.goalsScored,
      this.assists,
      this.ownGoals,
      this.yellowCards,
      this.yellowRedCards,
      this.redCards});

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
