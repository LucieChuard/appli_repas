import 'package:flutter/material.dart';


class CourseView extends StatelessWidget {
  const CourseView();

  static const routeName = '/course';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course'),
      ),
      body: const Center(
        child: Text('Page de Course'),
      ),
    );
  }
}
