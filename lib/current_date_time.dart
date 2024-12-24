import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(run());
}
class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "current Date and time ",
    home: date_time(),) ;
  }
}
class date_time extends StatefulWidget{
  @override
  State<date_time> createState() => _date_timeState();
}

class _date_timeState extends State<date_time> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return  Scaffold(
      appBar: AppBar(
        title: Text("Current Date and time"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 800,
                height: 500,
                color: Colors.black,
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Current date :- ${time.day} - ${time.month} - ${time.year}",style: TextStyle(color: Colors.white,fontSize: 25),),
                    Text("Current Time :- ${time.hour} hours - ${time.minute} minutes - ${time.second} seconds",style: TextStyle(color: Colors.white,fontSize: 25),),
                    Text("Current time using intel package :- ${DateFormat('Hms').format(time)}", style: TextStyle(fontSize: 25,color: Colors.white))
                  ],
                ))),
            ElevatedButton(onPressed:(){
              setState((){

              });
            }, child: Text("Get updated "))
          ],
        ),
      ),
    );
  }
}