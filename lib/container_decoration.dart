import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';


void main(){
 runApp(ContainerDecoration());
}

class ContainerDecoration extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ContainerDecoration",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DeshboardScreen(),
    );
  }
  
}

class DeshboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Container Decoration ",style: TextStyle(color: Colors.orange),)),
      ),
      body: Container(
        color: Colors.blue.shade100,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(50)

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.all(Radius.circular( 50))

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                    border: Border.all(
                      width: 7,
                      color: Colors.red.shade300
                    ),
                    boxShadow: [BoxShadow(
                      color: Colors.orange.shade200 ,
                      blurRadius: 50,
                      spreadRadius: 7,
                    )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    border: Border.all(
                        width: 7,
                        color: Colors.red.shade300
                    ),
                    boxShadow: [BoxShadow(
                      color: Colors.orange.shade200 ,
                      blurRadius: 50,
                      spreadRadius: 7,
                    )],
                    shape: BoxShape.circle,


                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

}