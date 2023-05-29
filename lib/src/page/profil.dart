import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class ProfilView extends StatelessWidget {
  const ProfilView();

  static const routeName = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text('Page de Profil'),
      ),
    );
  }
}
