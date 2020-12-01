import 'package:json_annotation/json_annotation.dart';

part 'head_tohead.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Data {
  String generatedAt;
  String schema;
  List<Team> teams;
  LastMeetings lastMeetings;
  List<NextMeetings> nextMeetings;

  Data(
      {this.generatedAt,
      this.schema,
      this.teams,
      this.lastMeetings,
      this.nextMeetings});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  String id;
  String name;
  String country;
  String countryCode;
  String abbreviation;
  String qualifier;

  Team(
      {this.id,
      this.name,
      this.country,
      this.countryCode,
      this.abbreviation,
      this.qualifier});

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LastMeetings {
  List<Result> results;

  LastMeetings({this.results});

  factory LastMeetings.fromJson(Map<String, dynamic> json) =>
      _$LastMeetingsFromJson(json);

  Map<String, dynamic> toJson() => _$LastMeetingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Result {
  SportEvent sportEvent;
  SportEventStatus sportEventStatus;

  Result({this.sportEvent, this.sportEventStatus});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
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
  String phase;

  TournamentRound({
    this.type,
    this.number,
    this.phase,
  });

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
class SportEventStatus {
  String status;
  String matchStatus;
  int homeScore;
  int awayScore;
  String winnerId;
  List<PeriodScores> periodScores;

  SportEventStatus(
      {this.status,
      this.matchStatus,
      this.homeScore,
      this.awayScore,
      this.winnerId,
      this.periodScores});

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
class NextMeetings {
  SportEvent sportEvent;

  NextMeetings({this.sportEvent});

  factory NextMeetings.fromJson(Map<String, dynamic> json) =>
      _$NextMeetingsFromJson(json);

  Map<String, dynamic> toJson() => _$NextMeetingsToJson(this);
}
