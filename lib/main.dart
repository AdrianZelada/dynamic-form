import 'package:flutter/material.dart';
import 'package:flutter_app/form/form.dart';
import 'package:flutter_app/form/input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title:'test application')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<InputClass> inputs = [];
  FormClass _form;

  _MyHomePageState(){
    this._form = FormClass(schema: this.schema);
  }

  List<dynamic> schema = [
    {
      'type': 'Text',
      'property': 'p1'
    },
    {
      'type': 'Text',
      'property': 'p2'
    },
    {
      'type': 'Text',
      'property': 'p3'
    }
  ];

  void viewData() {
    var data = this._form.getData();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: this._form
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: this.viewData,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
