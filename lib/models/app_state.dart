import 'package:hackflutter/models/sport_widgets/selected_widget.dart';
import 'package:meta/meta.dart';



@immutable
class AppState {
  const AppState({
    @required this.selectedWidget,
  });
  
  final SelectedWidget selectedWidget;

  @override
  String toString() {
    return 'AppState: {reduxSetup: $selectedWidget}';
  }
}