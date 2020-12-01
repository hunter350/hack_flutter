import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackflutter/api/network.dart';

import 'package:hackflutter/api/requests.dart';
import 'package:hackflutter/models/api/head_tohead.dart';
import 'package:hackflutter/widgets/progress_loader.dart';
import 'package:intl/intl.dart';

class Head2Head extends StatefulWidget {
  Head2Head({Key key, this.teamOneId, this.teamTwoId}) : super(key: key);

  final String teamOneId;
  final String teamTwoId;
  String title = 'HeadToHead';

  @override
  Head2HeadState createState() => Head2HeadState();
}

class Head2HeadState extends State<Head2Head> {
  String _teamOneAbbreviation;
  String _teamTwoAbbreviation;
  String _lastMeetingsDate;
  String _lastMeetingsWinner;
  String _homeScore;
  String _awayScore;
  String _lastMeetingsDate1;
  String _lastMeetingsWinner1;
  String _homeScore1;
  String _awayScore1;
  String _nextMeetingsDate;

  @override
  void initState() {
    _HeadToHeadRequest(widget.teamOneId, widget.teamTwoId)
        .then((Data teamOneData) {
      if (Network.error != null) {
        setState(() {});
      } else {
        _teamOneAbbreviation = teamOneData.teams[0].abbreviation;
        _teamTwoAbbreviation = teamOneData.teams[1].abbreviation;

        _lastMeetingsDate = teamOneData
            .lastMeetings.results[0].sportEvent.scheduled
            .substring(0, 10);
        String _lastMeetingsWinner10 =
            teamOneData.lastMeetings.results[0].sportEventStatus.winnerId;
        if (_lastMeetingsWinner10 == widget.teamOneId) {
          _lastMeetingsWinner = _teamOneAbbreviation;
        } else {
          _lastMeetingsWinner = _teamTwoAbbreviation;
        }
        _homeScore = teamOneData
            .lastMeetings.results[0].sportEventStatus.homeScore
            .toString();
        _awayScore = teamOneData
            .lastMeetings.results[0].sportEventStatus.awayScore
            .toString();

        if (teamOneData.lastMeetings.results.length > 1) {
          _lastMeetingsDate1 = teamOneData
              .lastMeetings.results[1].sportEvent.scheduled
              .substring(0, 10);
          String _lastMeetingsWinner11 =
              teamOneData.lastMeetings.results[1].sportEventStatus.winnerId;
          if (_lastMeetingsWinner11 == widget.teamOneId) {
            _lastMeetingsWinner1 = _teamOneAbbreviation;
          } else {
            _lastMeetingsWinner1 = _teamTwoAbbreviation;
          }
          _homeScore1 = teamOneData
              .lastMeetings.results[1].sportEventStatus.homeScore
              .toString();
          _awayScore1 = teamOneData
              .lastMeetings.results[1].sportEventStatus.awayScore
              .toString();
        } else {
          _lastMeetingsDate1 = 'Нет данных';
          _lastMeetingsWinner1 = 'Нет';
          _homeScore1 = '-';
          _awayScore1 = '-';
        }

        if (teamOneData.nextMeetings != null) {
          _nextMeetingsDate =
              teamOneData.nextMeetings[0].sportEvent.scheduled.substring(0, 10);
        } else {
          _nextMeetingsDate = 'Нет данных';
        }

        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    Network.error = null;
  }

  Future<Data> _HeadToHeadRequest(String teamId, String teamId1) async {
    final dynamic result = await Requests().getHeadToHead(teamId, teamId1);
    final dynamic data = jsonDecode(result.toString());
    final Data teamData = Data.fromJson(data as Map<String, dynamic>);
    return teamData;
  }

  @override
  Widget build(BuildContext context) {
    print('###${Network.error}');
    if (Network.error != null) {
      return Center(child: Text(Network.error,
          style: Theme.of(context).textTheme.headline4));
    } else {
      return _teamOneAbbreviation != null
          ? ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Head 2 Head',
                      style: Theme.of(context).textTheme.headline6),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 8.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/form.png'),
                                Text('$_teamOneAbbreviation'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('$_teamTwoAbbreviation'),
                                Image.asset('assets/form1.png'),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Result of the last two matches',
                                style: Theme.of(context).textTheme.headline6),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$_lastMeetingsDate'),
                            (_homeScore == _awayScore && _homeScore != '-')
                                ? Text('draw')
                                : Text('win: $_lastMeetingsWinner'),
                            Text('$_homeScore : $_awayScore'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$_lastMeetingsDate1'),
                            (_homeScore1 == _awayScore1 && _homeScore1 != '-')
                                ? Text('draw')
                                : Text('win: $_lastMeetingsWinner1'),
                            Text('$_homeScore1 : $_awayScore1'),
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('next match',
                                style: Theme.of(context).textTheme.headline6),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('$_nextMeetingsDate'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : const ProgressLoader();
    }
  }
}
