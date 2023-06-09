import 'package:flutter/material.dart';

import 'general.dart';


class ConnexionView extends StatelessWidget {
  const ConnexionView();

  static const routeName = '/connexion';

  @override 
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, GeneralView.routeName);
                },
                child: const Text("General"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 10, 83, 1))
                )
              ),
          ],
        ),
      ),
    );
}
}