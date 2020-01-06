
import 'dart:math';
void main() { 
  Random r = new Random();
var Luckynum= r.nextInt(10).toString();
   
   switch(Luckynum) { 
      case '1': {  print("wow!it's your lucky no:1-it's a great day"); } 
      break; 
     
      case '2': {  print("wow!it's your lucky no:2-sorry!! today is not a great day"); } 
      break; 
     
      case '3': {  print("wow!it's your lucky no:3- have a nice day"); } 
      break; 
     
      case '4': {  print("wow!it's your lucky no:4-it's a good day for u"); } 
      break; 
      case '5': {  print("wow!it's your lucky no:5-Be careful today"); } 
      break; 
      case '6': {  print("wow!it's your lucky no:6-it's a funny day"); } 
      break; 
      case '7': {  print("wow!it's your lucky no:7-it's a great day"); } 
      break; 
      case '8': {  print("wow!it's your lucky no:9-it's a great day"); } 
      break; 
      case '9': {  print("wow!it's your lucky no:1-it's a great day"); } 
      break; 
      default: { print("It's not the lucky num:"); } 
      break; 
   } 
}  




