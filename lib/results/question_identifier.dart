import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier( {required this.questionIndex, required this.isCorrect,super.key});
  final int questionIndex;
  final bool isCorrect;


  @override
  Widget build(context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          (questionIndex + 1).toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}