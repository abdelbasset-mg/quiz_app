import 'package:flutter/material.dart';
import 'package:quiz_app/startpage.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {

  const Quiz ({super.key});
  

  @override

  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activescreen='startpage';
  
  @override
  //void initState() {
  //  activescreen = StartPage(switchScreen);
  //  super.initState();
  //}

   void switchScreen() {
    setState(() {
      activescreen = 'questions_screen' ;
    });
  }
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Color.fromARGB(255, 55, 0, 253)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:  activescreen== 'startpage' ? StartPage(switchScreen) : const QuestoinsScreen(),
            ),
    ),
  );
  }
}