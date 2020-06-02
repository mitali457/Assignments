import 'package:flutter/material.dart';


onPressedRegistration(BuildContext context, email, password, ) async {
  if (email.text.isEmpty || password.text.isEmpty) {
    print(email.text);
    print(password.text);
    print('Email and Password can not Empty');
    return;
  }
  
}