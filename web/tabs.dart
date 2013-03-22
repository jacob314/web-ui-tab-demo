library tabs;

import 'dart:html';
import 'package:web_ui/web_ui.dart';

import 'pane.dart';

class Tabs extends WebComponent {
  
  List<Pane> panes = []; 
  
  void select(Pane pane) {
    for (var p in panes) {
      p.selected = p == pane;
    }
  }
  
  void removePane(Pane pane) {
    panes.remove(pane);
  }

  void addPane(Pane pane) {
    panes.add(pane);
    if (panes.length == 1) select(pane);
  } 
}
