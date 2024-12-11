import 'package:flutter/material.dart';

void main(){
  runApp(listtile());
}

class listtile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listtile",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: listTile(),
    );
  }

}


class listTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var arrName = ["Nikhil",'Indrajeet',"Ramesh","Abhinandan","manish","1","3","4","5","6","7"];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile View"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrName[index],style: TextStyle(fontSize: 25),),
          subtitle: Text('subtitle'),
          trailing: CircleAvatar(
            backgroundImage: AssetImage('assets/image/img1.jpg'),
          ),
        );
        },
        itemCount: arrName.length,
        separatorBuilder: (context,index){
          return Divider(height: 50, thickness: 10  ,);
        },
      ),
    );
  }

}