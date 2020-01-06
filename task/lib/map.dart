void main() { 
   Map<String,dynamic> m = {'name':'mitali','phno':123}; 
   print('Map :${m}'); 
   
   m.addAll({'dept':'Academy','email':'mm@xyz.com'}); 
   print('Map after inserting  entries :${m}');
   m.remove('name'); 
   print('Value popped from the Map :${m}');
   m.update('phno', (v) {return '8944866059';});
   print('Value updated in the Map :${m}');
   m.forEach((k,v,) => print('${k}: ${v}')); 
   
   } 
