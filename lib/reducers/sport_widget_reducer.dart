import 'package:hackflutter/actions/actions.dart';
import 'package:hackflutter/models/sport_widgets/selected_widget.dart';
import 'package:redux/redux.dart';



final sportWidgetReducer = TypedReducer<SelectedWidget, SetSelectedWidget>(_sportWidgetReducer);

SelectedWidget _sportWidgetReducer(SelectedWidget state, SetSelectedWidget action) {
  return SelectedWidget(name: action.name);
}