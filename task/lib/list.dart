void main() { 
  print('Before insert the list:');
   List<int> l = [1,2,3]; 
   print(l);
   l.addAll([12,13]); 
    print('After the inserttion:'); 
    print(l);
    print('The value deleted in the list is:');
    l.remove(1); 
    print(l);
    print('The value updated in the list is:');
    l.replaceRange(0,0,[11,23,24]);
    print(l);

//List<List<int>> tictoe=[[1,2,3],[4,5,6]];
//print(tictoe[0][1]);
}
