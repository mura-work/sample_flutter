import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next page'),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}