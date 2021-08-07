import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final myFocusNode = FocusNode();
  final myController = TextEditingController();
  String name = "aa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ヘッダー'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'メールアドレス',
              ),
              controller: myController,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'パスワード',
              ),
              onChanged: (text) {
                name = text;
                print(name);
              }
            ),
            ElevatedButton(
              onPressed: () {
                print(myController.text);
              },
              child: Text('新規登録'),
            ),
          ]
        )
      ),
    );
  }
}
