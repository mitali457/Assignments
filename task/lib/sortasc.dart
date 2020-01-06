import 'dart:io';

void main() {
  var n=[8,10,30,45,9,69,77,127,150];

  n.sort((a, b) => a.compareTo(b));

  var ascending = n.toString();

  print(ascending);
}
