/// Example functionality that obviously should be in a core ui library.
library utils;

import 'dart:html';

Element findParent(Element e, bool callback(Node n)) {
  e = e.parent;
  while(e != null) {
    if (callback(e)) {
      return e;
    }
    e = e.parent;
  }
  return null;
}

