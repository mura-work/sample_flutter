import 'package:flutter/material.dart';
import 'package:sample_flutter/todo_add_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',  // アプリ名
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('リスト1'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('リスト2'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('リスト3'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('リスト4'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return TodoAddPage();
            }),
          );
        },
        child: Icon(Icons.add),
      ),
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
