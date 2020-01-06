import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Enter number of persons');
  int noofperson = int.parse(stdin.readLineSync());
  int height = Random().nextInt(noofperson);
  List<int> group = new List<int>(height);
  int queue = 0;
  int size = 1;
  while (height != 0) {
    group[queue] = Random().nextInt(noofperson);
    if (queue != 0) {
      if (group[queue] < group[queue - 1]) {
        size++;
      }
    }
    queue++;
    height--;
  }
  print(size);
}
