void main()
{
  Set s= {2,3};
  print('insert the value in set:$s');
  s.addAll([5,7,8,43]);
  /*s.add(5);
  s.add(3);
  s.add(1);
  s.add(2);*/
  print('after  added the values:$s');
  s.remove(8);
   print('after removing the value:$s');


}