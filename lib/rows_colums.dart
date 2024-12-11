
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


      body: Center(
        child: Container(
          width: 500,
          height: 500,
          color: Colors.grey,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("1", style: TextStyle(fontSize: 25),),
                  Text("2",style: TextStyle(fontSize: 25),),
                  Text("3",style: TextStyle(fontSize: 25),)
                ],
              ),

              Text("5", style: TextStyle(fontSize: 25),),
              Text("Hellow", style: TextStyle(fontSize: 25),),
              Text("giszdn", style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){
                print("clicked");
              },
                  child: Text("Click")),
              Text('a', style: TextStyle(fontSize: 25),),
              Text('B', style: TextStyle(fontSize: 25),),
              // Image.asset('assets/image/img1.jpg')
            ],

          ),
        ),
      ),
    );
  }
}

