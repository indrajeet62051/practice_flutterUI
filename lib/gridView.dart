import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_container/current_date_time.dart';

main(){
  runApp(run());
}
class run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Grid View',
     home: page(),
   ) ;
  }
}
class page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrCol =[
      Colors.red.shade900,
      Colors.red.shade400,
      Colors.red.shade200,
      Colors.orange.shade900,
      Colors.orange.shade400,
    Colors.orange.shade200,
    Colors.yellow.shade900,
    Colors.yellow.shade400,
    Colors.yellow.shade200,
    ] ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View "),
        backgroundColor: Colors.orange,
      ),
      body:
        GridView.extent(maxCrossAxisExtent: 450,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
            children: [
              for(var i=0;i<arrCol.length;i++)
                Container(
                color: arrCol[i],
                ),
            ],
        )


    //   GridView.count(crossAxisCount: 3,
    //   crossAxisSpacing: 11,
    //   mainAxisSpacing: 11,
    //   children: [
    //     for(var i=0;i<arrCol.length;i++)
    //       Container(
    //       color: arrCol[i],
    //       ),
    //   ],
    // )

    );
  }

}

// Container(color: arrCol[0]),
// Container(color: arrCol[1]),
// Container(color: arrCol[2]),
// Container(color: arrCol[3]),