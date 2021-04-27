//
// arquivo t_menu.dart
//


import 'package:flutter/material.dart';
import 'package:projeto_ads_pdm_4ciclo/login.dart';
import 't_sobre.dart';

class Menu extends StatelessWidget {
  static const nomeRota = '/menu';

  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Text('Hello ' + user.toString()),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Sair'),
              //trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Login()),
                  ModalRoute.withName('/'),
                );
              },
            ),
            ListTile(
                leading: Icon(Icons.question_answer_outlined),
                title: Text('About'),
                subtitle: Text('Sobre'),
                trailing: Icon(Icons.arrow_forward_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sobre()));
                }),
          ],
        ),
      ),
    );
  }
}

