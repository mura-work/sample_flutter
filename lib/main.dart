import 'package:flutter/material.dart';
import 'package:sample_flutter/next_file.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ヘッダー'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'top-contents',
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
              ),
            ),
            Text(
              'bottom-contents',
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.overline,
              ),
            ),
          ],
        )
      ),
    );
  }
}
