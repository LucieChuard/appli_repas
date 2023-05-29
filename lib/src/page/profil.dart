import 'package:flutter/material.dart';

import 'favoris.dart';
import 'restriction.dart';
import 'infoperso.dart';


class ProfilView extends StatelessWidget {
  const ProfilView();

  static const routeName = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, FavoriView.routeName );
                },
                child: const Text("Favori"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 10, 83, 1)))),

            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                  Navigator.restorablePushNamed(context, RestrictionView.routeName);
              },
              child: const Text("Restriction"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.red),
              ),
            ),

                        const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                  Navigator.restorablePushNamed(context, InfopersoView.routeName);
              },
              child: const Text("Informations Personnelles"),
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