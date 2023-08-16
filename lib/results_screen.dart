import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results/summery.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,required this.chosenAnswer});

  final List<String> chosenAnswer;

  

  List<Map<String, Object>> getSummeryData(){

    final List<Map<String, Object>> summery = [];
    for ( int i = 0 ; i< chosenAnswer.length ; i++){
      summery.add({
        'question_index': i,
        'question_text': questions[i].text,
        'answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
              });
    }

    return summery;



  }

 

  @override
  Widget build(BuildContext context) {

    final numQuestions = questions.length;
    final summeryData = getSummeryData();
    final numCorrectAnswers = summeryData.where((data){
    return data['answer'] == data['user_answer'];
  }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'You answered $numCorrectAnswers out of $numQuestions correctly !',
              style: GoogleFonts.lato(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            const SizedBox(height: 30),
            QuestionsSummery(getSummeryData()),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        )
        ),
      );
    
  }
}