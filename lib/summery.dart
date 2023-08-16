import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery(this.summeryData,{super.key});

  final List<Map<String, Object>> summeryData;

  @override
  Widget build(context) {
    return  Column(
      children: 
      summeryData.map((data){
        return Row( children: [
          Text(((data['question_index'] as int) + 1 ).toString()),
          Expanded(
            child: Column( children: [
              Text(data['question_text'] as String),
              const SizedBox(height: 5,),
              Text(data['user_answer'] as String),
              Text(data['answer'] as String),
              
            ],),
          )
        ],


        );
      }).toList(),
    );
  }
}