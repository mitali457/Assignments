import 'dart:math';

void main() {
  var min = 1;
  var max = 3;
  var flip = min + Random().nextInt(max - min);

  if (flip == 1) {
    print(' you flipped Heads!');
    print('------');
  } else {
    print('you flipped tails!');
    print('------');
  }
}
  