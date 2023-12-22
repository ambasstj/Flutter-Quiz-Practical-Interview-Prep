import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
   return _Quiz ();
  }}

class _Quiz extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen((switchScreen));
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen();
    });}

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: activeScreen
      ),
    );
  }
}