//
// arquivo t_sobre.dart
//

import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
//static const nomeRota = '/sobre';

  Widget build(BuildContext context) {
    //final String user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Center(
        child: Text('Hello '),
      ),
      backgroundColor: Colors.grey,
    );
  }
}