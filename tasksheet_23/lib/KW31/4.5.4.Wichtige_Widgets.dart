
import 'package:flutter/material.dart';


class CoAndRoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoAndRoAppScreen(),
    );
  }
}

class CoAndRoAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox Exercise"),
      ),
      body: Center(
        child: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:[  

          Container(
            height: 150,
            width: 150,
            color: Colors.greenAccent,
            child: const Center(
              child: Text('Box 1'),)
          
            
          ),
          SizedBox(
            height: 20,
          ),
          
          Container(
            height: 100,
            width: 200,
            color: Colors.deepPurple,
            child: const Center(
              child: Text('Box 2'),)

            ),
            SizedBox(
            height: 20,
          ),
          
          Container(
            height: 200,
            width: 100,
            color: Colors.redAccent,
            child: const Center(
              child: Text('Box 3'),)
          ),
        ],
        
     )
        ),
        ), 
    );
  }
}



