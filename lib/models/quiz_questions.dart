class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text; 
  final List<String> answers;

  List<String> shuffeledList () {
    final List<String> shuffeledAnswers = List.of(answers);
    shuffeledAnswers.shuffle();
    return shuffeledAnswers;
  }

}