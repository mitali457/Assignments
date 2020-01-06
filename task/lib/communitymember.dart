import 'dart:io';

abstract class CommunityMembers {
  String collegename();
  String id();
}
abstract class Employee implements CommunityMembers {
  String collegename();
  String id();
  int salary();
}
class Student implements CommunityMembers {
  collegename() {
    print('Enter the collegename:');
    String collegename = stdin.readLineSync();
  }
  subject() {
    print('Enter your subject');
    String subject = stdin.readLineSync();
    print(subject);
  }
  id() {
    print('Enter your id');
    String id = stdin.readLineSync();
  }
}
class Alumini implements CommunityMembers {
  id() {
    print('Enter your id');
    String id = stdin.readLineSync();
  }
  collegename() {
    print('Enter the collegename:');
    String collegename = stdin.readLineSync();
  }
}
class Faculty implements Employee {
  collegename() {
    print('Enter the collegename:');
    String collegename = stdin.readLineSync();
  }
  id() {
    print('Enter your id');
    String id = stdin.readLineSync();
    return id;
  }
  salary() {
    print('Enter your salary');
    String salary = stdin.readLineSync();
  }
}
class Staff implements Employee {
  String collegename() {
    print('Enter the collegename:');
    String collegename = stdin.readLineSync();
  }
  String id() {
    print('Enter your id');
    String id = stdin.readLineSync();
  }
  salary() {
    print('Enter your salary');
    String salary = stdin.readLineSync();
    print(salary);
  }
}
class Administrator extends Faculty {
  post() {
    print('Enter your post');
    String post = stdin.readLineSync();
  }
}
class Teacher extends Faculty {
  expertin() {
    print('Enter your subject which you are Expert in');
    String expert = stdin.readLineSync();
  }
}
void main() {
  Administrator obj = Administrator();
  obj.collegename();
  obj.salary();
  Alumini alumini = Alumini();
  alumini.id();
}
