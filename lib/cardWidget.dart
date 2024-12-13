import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(run());
}

class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: card(),
   );
  }

}

class card extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(" Card Widget ", style: TextStyle(fontSize: 35,color: Colors.black),),
      ),

      body: Center(
        child: Card(
          shadowColor: Colors.orange.shade900,
          elevation: 50,
          borderOnForeground: true,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Its Card widget",style: TextStyle(fontSize: 55,color: Colors.red),),
          ),),
      ),
    );
  }


}