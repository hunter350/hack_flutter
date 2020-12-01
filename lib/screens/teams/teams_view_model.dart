import 'package:flutter/foundation.dart';
import 'package:hackflutter/actions/actions.dart';
import 'package:hackflutter/models/app_state.dart';
import 'package:hackflutter/models/sport_widgets/selected_widget.dart';
import 'package:hackflutter/selectors/selectors.dart';
import 'package:redux/redux.dart';



class TeamsViewModel {
  TeamsViewModel({@required this.selectedWidget, @required this.onSetSelectedWidget});

  final SelectedWidget selectedWidget;
  final Function(WidgetName) onSetSelectedWidget;

  static TeamsViewModel fromStore(Store<AppState> store) {
    return TeamsViewModel(
      selectedWidget: selectedWidgetSelector(store.state.selectedWidget),
      onSetSelectedWidget: (WidgetName widgetName) {
        store.dispatch(SetSelectedWidget(widgetName));
      },
    );
  }
}