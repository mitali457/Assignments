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
noofplayer = (noofplayer % 2) !=null? 1 : 2 ;
String mark;
int choice=int.parse(stdin.readLineSync());

mark = (noofplayer == 1) ? 'X' : 'O';
if (choice == 1 && tictoeboard[1] == '1')
            tictoeboard[1] = int.parse(mark);
       else if (choice == 2 && tictoeboard[2] == '2')
          tictoeboard[2] = int.parse(mark);
            
         else if (choice == 3 && tictoeboard[3] == '3')
            tictoeboard[3] = int.parse(mark);
            
         else if (choice == 4 && tictoeboard[4] == '4')
            tictoeboard[4] = int.parse(mark);
            
        else if (choice == 5 && tictoeboard[5] == '5')
            tictoeboard[5] = int.parse(mark);
            
        else if (choice == 6 && tictoeboard[6] == '6')
            tictoeboard[6] = int.parse(mark);
            
        else if (choice == 7 && tictoeboard[7] == '7')
            tictoeboard[7] = int.parse(mark);
            
        else if (choice == 8 && tictoeboard[8] == '8')
            tictoeboard[8] = int.parse(mark);
            
        else if (choice == 9 && tictoeboard[9] == '9')
            tictoeboard[9] = int.parse(mark);
            
        else
        {
            print("Invalid move ");
            noofplayer--;
            return ;
        }
        int checkwin()
{
    if (tictoeboard[1] == tictoeboard[2] && tictoeboard[2] == tictoeboard[3])
        return 1;
        
    else if (tictoeboard[4] == tictoeboard[5] && tictoeboard[5] == tictoeboard[6])
        return 1;
        
    else if (tictoeboard[7] == tictoeboard[8] &&tictoeboard[8] == tictoeboard[9])
        return 1;
        
    else if (tictoeboard[1] == tictoeboard[4] && tictoeboard[4] == tictoeboard[7])
        return 1;
        
    else if (tictoeboard[2] == tictoeboard[5] && tictoeboard[5] == tictoeboard[8])
        return 1;
        
    else if (tictoeboard[3] == tictoeboard[6] && tictoeboard[6] == tictoeboard[9])
        return 1;
        
    else if (tictoeboard[1] == tictoeboard[5] && tictoeboard[5] == tictoeboard[9])
        return 1;
        
    else if (tictoeboard[3] == tictoeboard[5] && tictoeboard[5] == tictoeboard[7])
        return 1;
        
    else if (tictoeboard[1] != '1' && tictoeboard[2] != '2' && tictoeboard[3] != '3' &&
        tictoeboard[4] != '4' && tictoeboard[5] != '5' && tictoeboard[6] != '6' && tictoeboard[7] 
        != '7' && tictoeboard[8] != '8' && tictoeboard[9] != '9')

        return 0;
    else
        return  - 1;
}



            





}





   

 
