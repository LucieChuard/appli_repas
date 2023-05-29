import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class GeneralView extends StatelessWidget {
  const GeneralView();

  static const routeName = '/general';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General'),
      ),
      body: const Center(
        child: Text('Page de General'),
      ),
    );
  }
}
