
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: HomeScreen() ,
    );

  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    var arrName = ["Nikhil",'Indrajeet',"Ramesh","2","manish","1","3","4","5","6","7"];

    return Scaffold(

        appBar: AppBar(
          title: Text(" List View"),
          backgroundColor: Colors.red,),


        // body:ListView.builder(itemBuilder: (context, index) {
        //   return Text(arrName[index], style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
        // },
        // itemCount: arrName.length,
        // itemExtent: 100,
        // scrollDirection: Axis.horizontal,)


        body:Center(
          child: Container(
            height: 500,
            width: 500,
            color: Colors.greenAccent,
            child: ListView.separated(itemBuilder: (context, index) {
              return Text(arrName[index], style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
            },
              itemCount: arrName.length,
              separatorBuilder: (context,index){
                return Divider(height: 4, thickness: 5,);
              },
            ),
          ),
        )
    );
  }
}








