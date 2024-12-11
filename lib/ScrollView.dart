
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
    return Scaffold(

        appBar: AppBar(
          title: Text(" Scroll View"),
          backgroundColor: Colors.red,),


        body:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 500,
                        width: 500,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 500,
                        width: 500,
                        color: Colors.greenAccent,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 500,
                        width: 500,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 500,
                        width: 500,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 500,
                width: 500,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 500,
                // width: 500,
                color: Colors.amber,
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 500,
                width: 500,
                color: Colors.cyanAccent,
              ),

            ],
          ),
        )
    );
  }
}








