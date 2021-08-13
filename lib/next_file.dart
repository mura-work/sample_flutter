import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class NextPage extends StatelessWidget {
  NextPage(this.name);  // イニシャライザ
  String name;  // 変数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next page'),
      ),
      body: Container(
        color: Colors.blue,
        child: Text(name),
      ),
    );
  }
}