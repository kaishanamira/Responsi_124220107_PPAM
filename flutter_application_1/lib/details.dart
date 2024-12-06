import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('$title Page!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
