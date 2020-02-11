import 'dart:async';
import 'dart:math';

void main() {
  print('Main Program starts!');
  printFilecontent();
  print('Main Program ends!');
}
// printFilecontent() async{
//   String fileContent=await downLoadFile();
//   print('The content of the file is:$fileContent');
  
// }
printFilecontent() {
  Future<String> fileContent= downLoadFile();
  fileContent.then((resultString){

print('The content of the file is:$resultString');
  });
  
  
}
Future<String>downLoadFile(){
  Future<String> result=Future.delayed(Duration(seconds: 5),(){
    return 'My file content';

  });
  return result;
}
 