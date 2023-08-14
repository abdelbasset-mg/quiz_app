import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 55, 0, 253)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('quiz-logo.png', width: 200),
                const Padding(padding: EdgeInsets.all(30.0)),
                const Text('Learn flutter in the fun way !', style: TextStyle(fontSize: 20, color: Colors.white),),
                TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(40),
                  ),
                  child: const Text('START QUIZ', style: TextStyle(fontSize: 28, color: Colors.white),),
                  ),
                  ],
                  ),
                 ),


                
          )
          ) 
            
          ),
        );
      


    
  
  
}