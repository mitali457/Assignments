import 'dart:io';
import 'dart:math';
void main()
{
 List<int>tictoeboard= new List<int>();
 tictoeboard.addAll([1,2,3]);
 tictoeboard.addAll([4,5,6]);
 tictoeboard.addAll([7,8,9]);
  print('${tictoeboard[0]} | ${tictoeboard[1]} | ${tictoeboard[2]}');
  print('${tictoeboard[3]} | ${tictoeboard[4]} | ${tictoeboard[5]}');
  print('${tictoeboard[7]} | ${tictoeboard[6]} | ${tictoeboard[8]}');
  print('Enter the no of player:');
  int noofplayer = int.parse(stdin.readLineSync());
  var o;
    var x;
        tictoeboard.replaceRange(0,2, [o,x,o]);
        tictoeboard.replaceRange(3, 5, [x,o,x]);
        tictoeboard.replaceRange(6, 8, [o,x,o]);
        print('${tictoeboard[0]} | ${tictoeboard[1]} | ${tictoeboard[2]}');
  print('${tictoeboard[3]} | ${tictoeboard[4]} | ${tictoeboard[5]}');
  print('${tictoeboard[7]} | ${tictoeboard[6]} | ${tictoeboard[8]}');
}