
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
    return Scaffold(

        appBar: AppBar(
          title: Text(" Screen"),
          backgroundColor: Colors.red,),


        body:
        Center(
          child: InkWell(
            onTap: (){
              print("Tapped");
            },
            onLongPress: (){
              print("Long pressed");
            },
            onDoubleTap: (){
              print("Doule Tapped");
            },
            child: Container(
              width: 500,
              height: 500,
              color: Colors.amber,
              child: Center(child: InkWell(
                  onTap: (){
                    print("clicked on text");
                  },
                  onDoubleTap: (){
                    print("Clicked Double on text ");
                  },
                  onLongPress: (){
                    print("Long pressed on text");
                  },
                  child: Text("Click",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
            ),
          ),
        )
    );
  }
}








