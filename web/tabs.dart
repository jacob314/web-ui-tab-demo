library tabs;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'pane.dart';

@observable
class Tabs extends WebComponent {
  var panes = new ObservableList<Pane>();

  void select(Pane pane) {
    panes.forEach((p) => p.selected = p == pane);
  }

  void removePane(Pane pane) {
    panes.remove(pane);
  }

  void addPane(Pane pane) {
    panes.add(pane);
    if (panes.length == 1) select(pane);
  }
}
