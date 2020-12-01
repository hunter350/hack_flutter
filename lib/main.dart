import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackflutter/reducers/app_reducer.dart';
import 'package:hackflutter/screens/teams/teams_controller.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'models/app_state.dart';
import 'models/sport_widgets/selected_widget.dart';




Future<void> main() async {
  const initialState = AppState(
    selectedWidget: SelectedWidget(
      name: WidgetName.averageGoalsWidget,
    ),
  );
  final store = Store<AppState>(
    appReducer,
    initialState: initialState,
  );
  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(StoreProvider(store: store, child: SportRadar()));
    },
    (error, stackTrace) async {
      print('\n${error.toString()}\n${stackTrace.toString()}');
    },
  );
}

class SportRadar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer teams',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Teams(title: 'Soccer teams'),
    );
  }
}
