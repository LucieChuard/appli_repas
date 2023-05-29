import 'package:flutter/material.dart';


class Page1tirageView extends StatelessWidget {
  const Page1tirageView();

  static const routeName = '/page1tirage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1tirage'),
      ),
      body: const Center(
        child: Text('Page de 1tirage'),
      ),
    );
  }
}
