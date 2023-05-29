import 'package:flutter/material.dart';


class SemaineTirageView extends StatelessWidget {
  const SemaineTirageView();

  static const routeName = '/semainetirage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semaine Tirage'),
      ),
      body: const Center(
        child: Text('Page de Semaine Tirage'),
      ),
    );
  }
}
