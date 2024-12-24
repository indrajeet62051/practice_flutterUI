import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_container/cardWidget.dart';

main(){
  runApp(run());
}

class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Users_input",
      home: inputpage(),
    );
  }

}

var emailtxt = TextEditingController();
var passtxt = TextEditingController();

class inputpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Users input "),
       backgroundColor: Colors.blueAccent,
     ),
     body: Center(
       child: Container(
         width: 700,
         height: 700,
         child: Column(
           children: [
             TextField(
               controller: emailtxt,
               decoration: InputDecoration(
                 hintText: "Enter your email ",
                 prefixIcon: Icon(Icons.email,color: Colors.blue,),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                   borderSide: BorderSide(
                     color: Colors.red,
                     width: 2
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(40),
                     borderSide: BorderSide(
                       color: Colors.orange,
                       width: 3,
                     )
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(15)),
                 )),),
             Container(
               height: 20,
             ),
             TextField(
               keyboardType: TextInputType.phone,
               controller: passtxt,
               obscureText: true,
               obscuringCharacter: "*",
               decoration: InputDecoration(
                 hintText: "Enter Your password " ,
                   prefixIcon: Icon(Icons.password),
                   // suffixIcon:Icon(Icons.remove_red_eye),
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15),
                       borderSide: BorderSide(
                           color: Colors.orange.shade900,
                           width: 2
                       )
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(40),
                       borderSide: BorderSide(
                         color: Colors.red,
                         width: 3,
                       )
                   ),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(15))
                   )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ElevatedButton(onPressed: (){
                 String uname = emailtxt.text;
                 String pass = passtxt.text;
                 print("Login button clicked Email = $uname And Password = $pass");
               },
                   child: Text("Log In ")),
             )
           ],
         ),
       ),
     ),
   );
  }

}