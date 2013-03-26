library pane;

import 'dart:html';
import 'package:web_ui/web_ui.dart';

import 'utils.dart';
import 'tabs.dart';

@observable
class Pane extends WebComponent {
  bool selected = false;
  String paneTitle;
  
  Tabs get _tabs => findParent(this, (n) => n.xtag is Tabs).xtag;
  
  void created() {
    classes.add("tab-pane");
    bindCssClasses(this, () => selected ? "active" : "");
  }

  void inserted() => _tabs.addPane(this);
  void removed() => _tabs.removePane(this);
}
