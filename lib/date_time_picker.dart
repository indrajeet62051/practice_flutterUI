import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_container/cardWidget.dart';

void main(){
  runApp(run());
}

class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "date and time picker ",
      home: home_page(),
    );
  }
}
class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Date and Time Picker "),
     ),
     body: Column(
       children: [
         Text("data"),
         ElevatedButton(onPressed: () async {
           DateTime? date = await showDatePicker(context: context,
               firstDate: DateTime(2023),
           lastDate: DateTime(2024),
           initialDate: DateTime.now());

           if(date!=null){
             print("Year of selected date is ${date.year}");
           }
           },
             child: Text("Set date"))
       ],
     ),
   );
  }
}