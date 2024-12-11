import 'package:flutter/material.dart';

void main(){

  runApp(circle());
}

class circle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avatar',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:avatar(),
    );
  }
}

class avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Circular Avatar", style: TextStyle(fontSize: 30),)),
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              width: 900,
              height: 900,
              color: Colors.orange.shade300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image/img1.jpg'),
                          minRadius: 100,
                          maxRadius: 100,
                        ),
                        Text("Nikita", style: TextStyle(fontSize: 30),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image/img2.jpeg'),
                          minRadius: 100,
                          maxRadius: 100,
                        ),
                        Text("Ankit",style: TextStyle(fontSize: 28),)
                      ],
                    ),
                  ),
            // Center(
            //   child: CircleAvatar(
            //     radius: 150, // Use `radius` for sizing
            //     child: Stack(
            //       children: [
            //         ClipOval(
            //           child: Image.asset(
            //             'assets/image/img3.jpg',
            //             fit: BoxFit.cover,
            //             height: 300, // Match the diameter of CircleAvatar (2 * radius)
            //             width: 300,
            //           ),
            //         ),
            //         Positioned(
            //           bottom: 10, // Adjust positioning of the text
            //           left: 0,
            //           right: 0,
            //           child: Text(
            //             "Hello",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //               backgroundColor: Colors.black54, // Add background for readability
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

                  Center(
                    child: CircleAvatar(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.asset('assets/image/img3.jpg'),
                            ),
                            Text("Name")
                          ],
                        ),
                      ),
                      backgroundColor: Colors.cyan,
                      maxRadius: 100,
                    ),
                  )

                ],
              ),

            ),
          )
        ],
      )

    );
  }

}