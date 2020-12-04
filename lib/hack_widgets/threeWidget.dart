import 'package:flutter/material.dart';
import 'package:hackflutter/hack_widgets/commentaries.dart';
import 'package:hackflutter/hack_widgets/time_line.dart';

import 'head_head.dart';

class ThreeWidget extends StatefulWidget {
  ThreeWidget({Key key, this.teamOneId, this.teamTwoId, this.matchId})
      : super(key: key);
  final String teamOneId;
  final String teamTwoId;
  final String matchId;
  String title = 'ThreeWidget';

  @override
  _ThreeWidgetState createState() => _ThreeWidgetState();
}

class _ThreeWidgetState extends State<ThreeWidget> {
  @override
 Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Head2Head'),
              Tab(text: 'TimeLine'),
              Tab(text: 'Comment'),
            ],
          ),
          title: Text('Hackathon'),
        ),
        body: TabBarView(
          children: [
            Head2Head(
              teamOneId: widget.teamOneId,
              teamTwoId: widget.teamTwoId,
            ),
            TimeLine(
              matchId: widget.matchId,
            ),
            Commentaries(
              matchId: widget.matchId,
            )
          ],
        ),
      ),
    );
    // );
  }
}
