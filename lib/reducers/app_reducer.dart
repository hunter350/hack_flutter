import 'package:hackflutter/models/app_state.dart';
import 'package:hackflutter/reducers/sport_widget_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    selectedWidget: sportWidgetReducer(state.selectedWidget, action),
  );
}