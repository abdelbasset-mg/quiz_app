import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/startpage.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {

  const Quiz ({super.key});
  

  @override

  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activescreen='startpage';

  List<String> selectedAnswer = [];

  void addAnswer (String answer){
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        
        activescreen = 'results_screen';
      });
      }
  }
  
 
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
    Widget nextscreen = StartPage(switchScreen);
    if (activescreen == 'questions_screen') {
      nextscreen =  QuestoinsScreen(onSelectedAnswer: addAnswer);
    } 

    if (activescreen == 'results_screen') {
      nextscreen =   ResultsScreen(chosenAnswer: selectedAnswer,);
    }
    
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
      child:  nextscreen,
            ),
    ),
  );
  }
}