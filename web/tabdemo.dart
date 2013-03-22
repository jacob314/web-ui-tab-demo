import 'dart:html';
import 'package:web_ui/web_ui.dart';

class Item {
  String name;

  Item(this.name); 
}

final items = <Item>[];

void add() {
  items.add(new Item('More Tea'));
}

void main() {
  // Enable this to use Shadow DOM in the browser.
  //useShadowDom = true;
  items.addAll([new Item('Green Tea'), new Item('Fruit Tea')]);
}
