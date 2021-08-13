import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sample_flutter/todo_add_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // firebase初期化
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sample',  // アプリ名
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoListPage(),
    );
  }
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text(todoList[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return TodoAddPage();
            }),
          );
          if (newListText != null){
            setState(() {
              todoList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  final items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ヘッダー'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('${items[index]}'),
            );
          }
        ),
      ),
    );
  }
}
