void main() { 
  /*List<int> listnum =new List(2); 
  listnum[0] = 12; 
   listnum[1] = 13; 
   listnum[2] = 11; 
  print(listnum)[2];*/
      List<int> listnum = [20,20,40];
      int num1 = 15, num2 = 10;
      int result = 10;
      try {
         result = (num1/num2) as int;
         print('result');
         for(int i = 5; i >= 0; i--) 
         {
            print('the value of list is:$listnum');
         }
         } 
      catch (ArrayIndexOutOfBoundsException ) 
      {
         print('list is out of Bounds');
      } catch (ArithmeticException )
       {
         print('can not divide by zero');
      }
}
      

