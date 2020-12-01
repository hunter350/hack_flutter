import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackflutter/api/network.dart';

import 'package:hackflutter/api/requests.dart';
import 'package:hackflutter/models/api/timeline_stat.dart';
import 'package:hackflutter/widgets/progress_loader.dart';

import 'package:intl/intl.dart';

class TimeLine extends StatefulWidget {
  TimeLine({Key key, this.matchId}) : super(key: key);

  final String matchId;
  String title = 'TimeLine';

  @override
  TimeLineState createState() => TimeLineState();
}

class TimeLineState extends State<TimeLine> {
  String _matchId1;
  List<String> _timeLine = List();
  List<String> _timeLineShort = List();
  List<String> _timeComment = List();
  List<String> _timeCommentShort = List();
  List<String> _teamHomeAway = List();
  List<String> _teamHomeAwayShort = List();
  int _homeScore = 0;
  int _awayScore = 0;
  int lenght = 0;
  String teamHome;
  String teamAway;

  @override
  void initState() {
    _timeLineRequest(widget.matchId).then((Data matchData) {
      if (Network.error != null) {
        setState(() {});
      }

      for (int i = 0; i <= matchData.timeline.length - 1; i++) {
        if (matchData.timeline != null && matchData.timeline[i].type != null) {
          _timeLine.add(matchData.timeline[i].type);
          if (matchData.timeline[i].matchTime != null) {
            _timeComment.add(matchData.timeline[i].matchTime.toString());
            _teamHomeAway.add(matchData.timeline[i].team);
          } else {
            _timeComment.add('');
            _teamHomeAway.add('');
          }
        }
        if (matchData.timeline[i].homeScore != null) {
          _homeScore = matchData.timeline[i].homeScore;
        }
        if (matchData.timeline[i].awayScore != null) {
          _awayScore = matchData.timeline[i].awayScore;
        }
      }

      teamHome = matchData.sportEvent.competitors[0].abbreviation;
      teamAway = matchData.sportEvent.competitors[1].abbreviation;
      lenght = _timeLine.length;
      if (lenght > 5) {
        _timeLineShort = _timeLine.sublist(lenght - 5, lenght);
        _timeCommentShort = _timeComment.sublist(lenght - 5, lenght);
        _teamHomeAwayShort = _teamHomeAway.sublist(lenght - 5, lenght);
      } else {
        _timeLineShort = _timeLine;
        _timeCommentShort = _timeComment;
        _teamHomeAwayShort = _teamHomeAway;
      }

      setState(() {
        _matchId1 = matchData.sportEvent.id;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    Network.error = null;
  }

  Future<Data> _timeLineRequest(String matchId) async {
    final dynamic result = await Requests().getTimeLine(matchId);
    final dynamic data = jsonDecode(result.toString());
    final Data timeLineData = Data.fromJson(data as Map<String, dynamic>);
    return timeLineData;
  }

  @override
  Widget build(BuildContext context) {
    if (Network.error != null) {
      return Center(child: Text(Network.error,
          style: Theme.of(context).textTheme.headline4));
    } else {
      return _timeLineShort.length > 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    //color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6),
                      child: ListView.builder(
                          itemCount: _timeLineShort.length,
                          shrinkWrap: true,
                          reverse: true,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                index == _timeLineShort.length - 1
                                    ? Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                      'assets/form.png'),
                                                  Text('$teamHome'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text('$teamAway'),
                                                  Image.asset(
                                                      'assets/form1.png'),
                                                ],
                                              )
                                            ],
                                          ),
                                          Text('$_homeScore : $_awayScore',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6)
                                        ],
                                      )
                                    : Container(),
                                TeamHome(
                                  homeAway1: _teamHomeAwayShort[index],
                                  timeComment1: _timeCommentShort[index],
                                  timeLine1: _timeLineShort[index],
                                ),
                                index == 0
                                    ? Container()
                                    : Divider(
                                        thickness: 2,
                                      )
                              ],
                            );
                          }),
                    ),
                  ),
                ],
              ),
            )
          : const ProgressLoader();
    }
  }
}

class TeamHome extends StatefulWidget {
  TeamHome({Key key, this.homeAway1, this.timeComment1, this.timeLine1})
      : super(key: key);
  String homeAway1;
  String timeComment1;
  String timeLine1;

  @override
  TeamHomeState createState() => TeamHomeState();
}

class TeamHomeState extends State<TeamHome> {
  @override
  Widget build(BuildContext context) {
    if (widget.homeAway1 == 'home') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text("${widget.timeLine1}   ${widget.timeComment1}'",
                style: Theme.of(context).textTheme.subtitle2),
            flex: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/dot1.png'),
              ],
            ),
            flex: 6,
          ),
        ],
      );
    } else if (widget.homeAway1 == 'away') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/dot1.png'),
              ],
            ),
            flex: 6,
          ),
          Expanded(
            child: Text("${widget.timeComment1}'   ${widget.timeLine1}",
                style: Theme.of(context).textTheme.subtitle2),
            flex: 6,
          ),
        ],
      );
    } else if (widget.homeAway1 == '') {
      return Center(
        child: Text("${widget.timeLine1}",
            style: Theme.of(context).textTheme.subtitle2),
      );
    } else {
      return Container(
        height: 0,
        width: 0,
      );
    }
  }
}
