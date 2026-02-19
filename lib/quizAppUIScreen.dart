import 'package:flutter/material.dart';

class quizzAppUI extends StatelessWidget{
  // quizzAppUI(super.key);
  @override
  Widget build(BuildContext){
    return MaterialApp(
      home:
      Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.quiz_outlined)],
          title: Text("Quiz App",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Quizzdata"),
            ],
          ),
        ),
      ),
      
      
    );
  }
}