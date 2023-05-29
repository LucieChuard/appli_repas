import 'package:flutter/material.dart';


class RestrictionView extends StatelessWidget {
  const RestrictionView();

  static const routeName = '/restriction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restriction'),
      ),
      body: const Center(
        child: Text('Page de Restriction'),
      ),
    );
  }
}
