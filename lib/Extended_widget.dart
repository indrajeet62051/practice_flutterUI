import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(Extended());
}

class Extended extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ExtendedWidget",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: extendedWidget(),
    );
  }

}

class extendedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text("Extended Widgets")),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.shade500,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.shade400,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.shade200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.shade50,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              flex: 2,
              child: Container(
              height: 200,
              width: 200,
              color: Colors.green.shade500,),),
          ),
          Expanded(
            flex: 2,
            child: Container(
            height: 200,

            color: Colors.orange.shade500,
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              flex: 6,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }

}