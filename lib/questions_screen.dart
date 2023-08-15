import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestoinsScreen extends StatefulWidget {
  const QuestoinsScreen({super.key});
  @override
  State<QuestoinsScreen> createState(){
    return _QuestoinsScreenState();
  }

}

class _QuestoinsScreenState extends State<QuestoinsScreen> {
  @override
  Widget build(context) {
    return  SizedBox( 
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        const Text('question is here ?', style: TextStyle(fontSize: 28, color: Colors.white)),
        const SizedBox(height: 30),
        AnswerButton(toTap: () {}, answerText: 'answer 1'),
      ],
      )
    );
  }
}