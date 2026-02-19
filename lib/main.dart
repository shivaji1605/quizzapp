import 'package:flutter/material.dart';
import 'package:quizzapp/quizAppUIScreen.dart';
void main(){
  runApp(mainApp());
}

class mainApp extends StatelessWidget{
  mainApp({super.key});
  @override
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: quizzAppUI(),
      ),
    );
  }
}

