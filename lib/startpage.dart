import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  
  const StartPage(this.startquiz,{super.key});
  final void Function() startquiz;
  
  @override
  
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'quiz-logo.png',
              width: 200,
              color: const Color.fromARGB(150, 255, 255, 255),
              ),
            const Padding(padding: EdgeInsets.all(30.0)),
            Text(
              'Learn flutter in the fun way !',
              style: GoogleFonts.lato(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color:  Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startquiz,
              icon: const Icon(Icons.arrow_right_alt_rounded,),
              label: const Text(
                'start quiz',
                style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}
