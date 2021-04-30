
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/form/input.dart';
import 'package:flutter_app/form/store.dart';

class FormClass extends StatelessWidget {
  Map<String, dynamic> _properties = new Map();
  List<Widget> fields = [];
  final List<dynamic> schema;
  final List<dynamic> data;
  StoreForm dataStore;
  FormClass({
    Key key,
    @required this.schema,
    this.data
  }){

    this.dataStore = StoreForm(this.data);
    this.schema.forEach((dynamic element) {
      // sorteo de tipos de datos
      print(this.schema.length);
      this._properties['${element['property']}'] = null;
      this.fields.add(InputClass(
          type: element['type'],
          property: element['property'],
          dataStore: this.dataStore
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('POC form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: this.fields,
        )
      )
    );
  }

  getData (){
    return this.dataStore.getData();
  }
}
