import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results/question_identifier.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery(this.summeryData, {super.key});

  final List<Map<String, Object>> summeryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map((data) {
            return Row(
              children: [
                QuestionIdentifier(
                    isCorrect: data['answer'] == data['user_answer'],
                    questionIndex: data['question_index'] as int),
                const SizedBox(
                  width: 10,
                ),  
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start ,
                    children: [
                      Text(
                        data['question_text'] as String,
                        style: const TextStyle(
                            
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,    
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(data['user_answer'] as String,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,    
                              ),
                      Text(data['answer'] as String,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,    
                              ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
