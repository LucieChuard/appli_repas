import 'package:flutter/material.dart';

import 'connexion.dart';
import 'inscription.dart';


class BienvenueView extends StatelessWidget {
  const BienvenueView();

  static const routeName = '/bienvenue';

  @override 
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue : Qu'est ce qu'on mange"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, ConnexionView.routeName);
                },
                child: const Text("Connexion"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 10, 83, 1)))),

            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                  Navigator.restorablePushNamed(context, InscriptionView.routeName);
              },
              child: const Text("Inscription"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
}
}