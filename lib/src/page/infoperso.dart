import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class InfopersoView extends StatelessWidget {
  const InfopersoView();

  static const routeName = '/infoperso';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infoperso'),
      ),
      body: const Center(
        child: Text('Page de Infoperso'),
      ),
    );
  }
}
