import 'package:flutter/material.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login', // first screen that would appear
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
      },
    ),
  );
}
