import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('リスト追加画面'),
        ),
      )
    );
  }
}