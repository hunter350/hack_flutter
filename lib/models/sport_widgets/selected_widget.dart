import 'package:meta/meta.dart';

enum WidgetName { 
  averageGoalsWidget,
  verticalTimelineWidget,
}

extension WidgetNameTitle on WidgetName {
  String get title {
    switch(this) {
      case WidgetName.averageGoalsWidget: return 'Average Goals';
      case WidgetName.verticalTimelineWidget: return 'Vertical Time';
      default: return 'Average Goals';
    }
  }
  
  static WidgetName getByName(String title) {
     switch(title) {
       case 'Average Goals': return WidgetName.averageGoalsWidget;
       case 'Vertical Time': return WidgetName.verticalTimelineWidget;
       default: return WidgetName.averageGoalsWidget;
    }
  }
}

@immutable
class SelectedWidget {
  const SelectedWidget({
    @required this.name,
  });

  final WidgetName name;

  dynamic toJson() => {
    'name': name,
  };
}