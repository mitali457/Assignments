

import 'package:flutter/material.dart';




onPressedLogin(
    BuildContext context, emailController, passwordController) async {
  if (emailController.text.isEmpty || passwordController.text.isEmpty) {
    print('Email and Password can not Empty');
    return;
  }
 
}