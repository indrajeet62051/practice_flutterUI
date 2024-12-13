import 'package:flutter/material.dart';

main(){
  runApp(font());
}

class font extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "abc",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.orange,
      // ),
      home: Font(),
    );
  }
}

class Font extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Custom Font " ,style: TextStyle(fontSize: 25,fontFamily: 'oswald'),)),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          color: Colors.black45,
          child: Text("Hii Everyone . How you doing ?",style: TextStyle(fontSize: 50,fontFamily: 'playwrite',color: Colors.white),),
        ),
      ),
    ) ;
  }

}