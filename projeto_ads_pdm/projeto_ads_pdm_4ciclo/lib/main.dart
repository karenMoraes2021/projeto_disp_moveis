//
// main.dart
//

import 'package:flutter/material.dart';
import 'login.dart';
import 't_menu.dart';
import 't_sobre.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My Project',
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/sobre': (context) => Sobre(),
      '/menu': (context) => Menu(),
      //'func1': (context) => Func1(),
      //'func1': (context) => Func1(),
    },
  ));
}

class VerificaLogin {
  String usuario = '';
  String pass = '';

  bool validaUser() {
    if (usuario != 'user' && pass != 'admin') return false;
    return true;
  }

}
