import 'package:flutter/material.dart';


class FavoriView extends StatelessWidget {
  const FavoriView();

  static const routeName = '/favori';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favori'),
      ),
      body: const Center(
        child: Text('Page de Favori'),
      ),
    );
  }
}
