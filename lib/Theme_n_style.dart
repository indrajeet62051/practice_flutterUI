

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(run());
}

class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Theme',
     theme: ThemeData(
       textTheme: TextTheme(
           displayLarge : TextStyle(fontSize: 30,color: Colors.red.shade400,fontWeight: FontWeight.w700,fontFamily: 'oswald'),
         titleLarge: TextStyle(fontSize:45,fontFamily: 'playwrite',color: Colors.orange ),
       )

     ),
     home: theme_page(),
   );
  }
  
}

class theme_page extends StatelessWidget{
  TextStyle mtxtStyle1(){
    return TextStyle(
      fontSize: 50,
      fontFamily: 'oswald',

      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,

    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Theme and Style", style: Theme.of(context).textTheme.displayLarge,)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Center(child: Text("Hello Everyone  ", style:Theme.of(context).textTheme.titleLarge,)),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Center(child: Text("How are you ",style: Theme.of(context).textTheme.displayLarge!.copyWith(fontFamily: 'playwrite'),)),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Center(child: Text("Doing ?", style:Theme.of(context).textTheme.titleLarge)),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Center(child: Text(" I Know you aLL aRe Doing weLl ",style: mtxtStyle1())),
            ),
          ],
        ),
      ),
    );
  }
  
}