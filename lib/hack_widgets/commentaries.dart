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

class Commentaries extends StatefulWidget {
  Commentaries({Key key, this.matchId}) : super(key: key);

  final String matchId;
  String title = 'Commentaries';

  @override
  CommentariesState createState() => CommentariesState();
}

class CommentariesState extends State<Commentaries> {
  String _matchId1;
  List<String> _comment = List();
  List<String> _commentShort = List();
  List<String> _timeComment = List();
  List<String> _timeCommentShort = List();
  int _homeScore = 0;
  int _awayScore = 0;
  int lenght = 0;

  @override
  void initState() {
    _timeLineRequest(widget.matchId).then((Data matchData) {
      if (Network.error != null) {
        setState(() {});
      }

      for (int i = 0; i <= matchData.timeline.length - 1; i++) {
        if (matchData.timeline[i].commentaries != null) {
          _comment.add(matchData.timeline[i].commentaries[0].text);
          _timeComment.add(matchData.timeline[i].matchTime.toString());
        }
        if (matchData.timeline[i].homeScore != null) {
          _homeScore = matchData.timeline[i].homeScore;
        }
        if (matchData.timeline[i].awayScore != null) {
          _awayScore = matchData.timeline[i].awayScore;
        }
      }

      lenght = _comment.length;

      if (lenght > 5) {
        _commentShort = _comment.sublist(lenght - 5, lenght);
        _timeCommentShort = _timeComment.sublist(lenght - 5, lenght);
      } else {
        _commentShort = _comment;
        _timeCommentShort = _timeComment;
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
      return Center(child: Text(Network.error));
    } else {
      return _commentShort.length > 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text('   Score $_homeScore : $_awayScore',
                      style: Theme.of(context).textTheme.headline6),
                  Card(
                    //color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6),
                      child: ListView.builder(
                          itemCount: _commentShort.length,
                          shrinkWrap: true,
                          reverse: true,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${_timeCommentShort[index]}'   ${_commentShort[index]}",
                                    style:
                                        Theme.of(context).textTheme.subtitle2),
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
              ))
          : Center(child: Text('Нет данных😱',
          style: Theme.of(context).textTheme.headline4));
    }
  }
}
