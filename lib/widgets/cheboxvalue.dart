import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class CheckValue extends StatefulWidget {
  @override
  CheckValueState createState() {
    return new CheckValueState();
  }
}

class CheckValueState extends State<CheckValue> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["exta cheese", "extra vegge"," spice"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
          children: <Widget>[
      
              Container(
              height: 200,
              child: Column(
                children: text
                    .map((t) => CheckboxListTile(
                          title: Text(t),
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val!;
                              if (val == true) {
                                _currText = t;
                              }
                            });
                          },
                        ))
                    .toList(),
          
            )),
          ],
        
      ),
    );
  }
}