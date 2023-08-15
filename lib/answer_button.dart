import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  AnswerButton({super.key,required this.answerText, required this.toTap,});

  final String answerText;
  final void Function() toTap;

  @override

 

  Widget build(context){
    return ElevatedButton(
          onPressed: toTap,
          
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 48, 130),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 42)
          ),
          child: Text(answerText) ,
        );
  }

}