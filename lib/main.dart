import 'package:flutter/material.dart';

void main(){
  runApp(App_name());
}

class App_name extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Extended_widget",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: screenname(),
    );
  }

}

class screenname extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tital of App bar ")),
      ),
      body: Container(
        width: 500,
        height: 500,
        color: Colors.orange,
        child: TextField(),
      ),
    );

  }

}