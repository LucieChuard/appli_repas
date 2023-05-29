import 'package:flutter/material.dart';

import 'page1tirage.dart';
import 'pagesemainetirage.dart';
import 'course.dart';
import 'profil.dart';


class GeneralView extends StatelessWidget {
  const GeneralView();

  static const routeName = '/general';

  @override 
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page General"),
        actions: <Widget>[
          ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, ProfilView.routeName);
                },
                child: const Text("P"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Color.fromARGB(255, 17, 0, 255)))),
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, Page1tirageView.routeName);
                },
                child: const Text("Tirage 1 repas"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 10, 83, 1)))),

            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                  Navigator.restorablePushNamed(context, SemaineTirageView.routeName);
              },
              child: const Text("Tirage 1 semaine "),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.red),
              ),
            ),

                        const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: () {
                  Navigator.restorablePushNamed(context, CourseView.routeName);
              },
              child: const Text("Course"),
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