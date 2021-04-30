import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/form/store.dart';

class InputClass extends StatefulWidget {

  final String type;
  final String property;
  _InputClass input;
  StoreForm dataStore;
  InputClass({
    Key key,
    @required this.type,
    @required this.property,
    @required this.dataStore
  }) : super(key:key);

  @override
  _InputClass createState(){
    this.input = _InputClass();
    return this.input;
  }
}

class _InputClass extends State<InputClass>{
  final _input = TextEditingController();

  _InputClass(){}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: widget.type,
          ),
          controller: _input,
          onChanged: (value)  {
            // print(value);
            widget.dataStore.setKeyData(widget.property, value);
          },
        )
      ],
    );
  }
}