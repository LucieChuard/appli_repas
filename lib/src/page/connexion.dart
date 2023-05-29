import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class ConnexionView extends StatelessWidget {
  const ConnexionView();

  static const routeName = '/connexion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: const Center(
        child: Text('Page de connexion'),
      ),
    );
  }
}
