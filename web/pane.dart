library pane;

import 'dart:html';
import 'package:web_ui/web_ui.dart';

import 'tabs.dart';

class Pane extends WebComponent {
  bool selected = false;
  String paneTitle;
  
  Tabs get _tabs {
    var p = parent;
    while(p != null) {
      if (p.xtag is Tabs) {
        return p.xtag;
      }
      p = p.parent;
    }
    return null;
  }
  
  void created() {
    // TODO(jacobr): set classes with template once that is supported for
    // classes on the root node.
    classes.add("tab-pane");
    watchAndInvoke(() => selected, (_) {
      if (selected) {
        classes.add("active");
      } else {
        classes.remove("active");
      }
    });
  }
  void inserted() {
    _tabs.addPane(this);
  }
  
  // TODO(jacobr): this shouldn't have been required for this simple example
  // but is required when watchers instead of observers are used with web-ui
  // as the Pane objects are created and destroyed every frame.
  void removed() {
    _tabs.removePane(this);
  }
}
