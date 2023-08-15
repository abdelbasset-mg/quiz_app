import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestoinsScreen extends StatefulWidget {
  const QuestoinsScreen({super.key});
  @override
  State<QuestoinsScreen> createState() {
    return _QuestoinsScreenState();
  }
}



class _QuestoinsScreenState extends State<QuestoinsScreen> {
  var currentQuestionIndex = 0;

void nextqestion(){
  setState((){
    currentQuestionIndex = currentQuestionIndex + 1;
  });
}
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                  currentQuestion.text,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,

                  ),
              const SizedBox(height: 30),
              ...currentQuestion.shuffeledList().map((answer){
                return AnswerButton(answerText: answer, toTap:nextqestion);
              }),
              
            ],
          ),
        )
        );
  }
}
