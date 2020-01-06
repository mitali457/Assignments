import 'dart:io';
void main() {
  final size = 5;
  final grid = List<List<int>>.generate(
      size, (i) => List<int>.generate(size, (j) => i * size + j));
  print(grid);
}