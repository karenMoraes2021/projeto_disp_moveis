//
// login.dart
//

import 'package:flutter/material.dart';
import 'package:projeto_ads_pdm_4ciclo/main.dart';
import 'package:projeto_ads_pdm_4ciclo/t_menu.dart';

class Login extends StatelessWidget {
  static const nomeRota = '/login';
  VerificaLogin login1 = new VerificaLogin();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
              labelText: 'Usuário',
            ),
            onChanged: (text) {
              login1.usuario = text;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outlined),
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
            onChanged: (text) {
              login1.pass = text;
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () { 
                if (login1.validaUser())
                  Navigator.pushNamed(context, Menu.nomeRota,
                      arguments: login1.usuario.toString());
                else
                  print('Alarm');
              },
              child: Text('Entrar'))
        ]),
      ),
    );
  }
}
