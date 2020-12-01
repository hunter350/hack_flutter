import 'package:json_annotation/json_annotation.dart';

part 'team_statistics.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Data {
  String generatedAt;
  String schema;
  Tournament tournament;
  Team team;
  TeamSeasonCoverage teamSeasonCoverage;
  TeamStatistics teamStatistics;
  List<PlayerStatistics> playerStatistics;
  GoaltimeStatistics goaltimeStatistics;

  Data(
      {this.generatedAt,
      this.schema,
      this.tournament,
      this.team,
      this.teamSeasonCoverage,
      this.teamStatistics,
      this.playerStatistics,
      this.goaltimeStatistics});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tournament {
  String id;
  String name;
  Sport sport;
  Sport category;
  CurrentSeason currentSeason;

  Tournament(
      {this.id, this.name, this.sport, this.category, this.currentSeason});

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
class CurrentSeason {
  String id;
  String name;
  String startDate;
  String endDate;
  String year;

  CurrentSeason({this.id, this.name, this.startDate, this.endDate, this.year});

  factory CurrentSeason.fromJson(Map<String, dynamic> json) =>
      _$CurrentSeasonFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentSeasonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  String id;
  String name;
  String country;
  String countryCode;
  Sport sport;
  Sport category;
  String abbreviation;

  Team(
      {this.id,
      this.name,
      this.country,
      this.countryCode,
      this.sport,
      this.category,
      this.abbreviation});

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  String id;
  String name;
  String countryCode;

  Category({this.id, this.name, this.countryCode});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TeamSeasonCoverage {
  int scheduled;
  int played;
  int platinum;
  int gold;

  TeamSeasonCoverage({this.scheduled, this.played, this.platinum, this.gold});

  factory TeamSeasonCoverage.fromJson(Map<String, dynamic> json) =>
      _$TeamSeasonCoverageFromJson(json);

  Map<String, dynamic> toJson() => _$TeamSeasonCoverageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TeamStatistics {
  int matchesPlayed;
  int matchesWon;
  String form;
  GoalAttempts goalAttempts;
  GoalAttempts shotsOnGoal;
  GoalAttempts shotsOffGoal;
  GoalAttempts cornerKicks;
  GoalAttempts ballPossession;
  GoalAttempts shotsBlocked;
  GoalAttempts cardsGiven;
  GoalAttempts freeKicks;
  GoalAttempts offsides;
  GoalAttempts shotsOnBar;
  GoalAttempts goalsByFoot;
  GoalAttempts goalsScored;
  GoalAttempts goalsConceded;

  TeamStatistics(
      {this.matchesPlayed,
      this.matchesWon,
      this.form,
      this.goalAttempts,
      this.shotsOnGoal,
      this.shotsOffGoal,
      this.cornerKicks,
      this.ballPossession,
      this.shotsBlocked,
      this.cardsGiven,
      this.freeKicks,
      this.offsides,
      this.shotsOnBar,
      this.goalsByFoot,
      this.goalsScored,
      this.goalsConceded});

  factory TeamStatistics.fromJson(Map<String, dynamic> json) =>
      _$TeamStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatisticsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GoalAttempts {
  int total;
  int matches;

  GoalAttempts({this.total, this.matches});

  factory GoalAttempts.fromJson(Map<String, dynamic> json) =>
      _$GoalAttemptsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalAttemptsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PlayerStatistics {
  String id;
  String name;
  int matchesPlayed;
  Statistics statistics;
  int minutesPlayed;

  PlayerStatistics(
      {this.id,
      this.name,
      this.matchesPlayed,
      this.statistics,
      this.minutesPlayed});

  factory PlayerStatistics.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerStatisticsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistics {
  GoalAttempts goalsScored;
  GoalAttempts shotsOnGoal;
  GoalAttempts substitutedOut;
  GoalAttempts goalAttempts;
  GoalAttempts offsides;
  GoalAttempts cardsGiven;
  GoalAttempts shotsOffGoal;
  GoalAttempts substitutedIn;
  GoalAttempts shotsBlocked;
  GoalAttempts cornerKicks;
  GoalAttempts assists;

  Statistics(
      {this.goalsScored,
      this.shotsOnGoal,
      this.substitutedOut,
      this.goalAttempts,
      this.offsides,
      this.cardsGiven,
      this.shotsOffGoal,
      this.substitutedIn,
      this.shotsBlocked,
      this.cornerKicks,
      this.assists});

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GoaltimeStatistics {
  Scored scored;
  Scored conceded;

  GoaltimeStatistics({this.scored, this.conceded});

  factory GoaltimeStatistics.fromJson(Map<String, dynamic> json) =>
      _$GoaltimeStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$GoaltimeStatisticsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Scored {
  int total;
  List<Period> period;

  Scored({this.total, this.period});

  factory Scored.fromJson(Map<String, dynamic> json) => _$ScoredFromJson(json);

  Map<String, dynamic> toJson() => _$ScoredToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Period {
  String name;
  int value;

  Period({this.name, this.value});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
