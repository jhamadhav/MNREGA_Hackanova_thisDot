import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class myForm extends StatefulWidget {
  const myForm({Key? key}) : super(key: key);

  @override
  _myFormState createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  var state, stage;
  TextEditingController _state = TextEditingController();
  TextEditingController _stage = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search Assests"),
          backgroundColor: Color.fromARGB(255, 36, 58, 95),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                child: TextField(
                  controller: _state,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'State'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  controller: _stage,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Stage'),
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => QueryDatabase(
              //                 state: _state.text,
              //                 stage: _stage.text,
              //               )));
              //     },
              //     child: Text('Submit'))
            ],
          ),
        )));
  }
}
