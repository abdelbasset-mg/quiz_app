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
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
                currentQuestion.text,
                style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 30),
            AnswerButton(toTap: () {}, answerText: currentQuestion.answers[0]),
            AnswerButton(toTap: () {}, answerText: currentQuestion.answers[1]),
            AnswerButton(toTap: () {}, answerText: currentQuestion.answers[2]),
            AnswerButton(toTap: () {}, answerText: currentQuestion.answers[3]),
          ],
        )
        );
  }
}
