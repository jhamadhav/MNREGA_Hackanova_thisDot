import 'package:flutter/material.dart';

class MongoDbInsert extends StatefulWidget{
  MongoDbInsert({Key? key}) : super(key:key);

  @override
  _MongoDbInsertState createState() => _MongoDbInsertState();
}

class _MongoDbInsertState extends State<MongoDbInsert>{
  @override
  Widget build(BuildContext context){
    return Scaffold(body: SafeArea(child: Column(children:[
      Text("Insert", style: TextStyle(fontSize: 28),)
    ],),),);
  }
}

