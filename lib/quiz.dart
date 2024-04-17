import 'dart:io';

class Question {
  final String questionText;
  final bool answer;

  Question(this.questionText, this.answer);
}

class Quiz {
  final List<Question> questions;
  int currentQuestionIndex = 0;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('Welcome to the Quiz!');
    while (currentQuestionIndex < questions.length) {
      askQuestion();
      currentQuestionIndex++;
    }
    print('\nQuiz completed! Your final score is: $score/${questions.length}');
  }

  void askQuestion() {
    final question = questions[currentQuestionIndex];
    print('\n${currentQuestionIndex + 1}. ${question.questionText}');
    print('Type "t" for true or "f" for false:');
    final userInput = stdin.readLineSync();

    if (userInput == 't' || userInput == 'f') {
      final userAnswer = (userInput == 't');
      if (userAnswer == question.answer) {
        print('Correct!');
        score++;
      } else {
        print('Incorrect.');
      }
    } else {
      print('Invalid input. Please enter "t" or "f".');
      // Re-ask the question if the input was invalid.
      askQuestion();
    }
  }
}

void main() {
  final questions = [
    Question('The earth is round.', true),
    Question('The sky is green.', false),
    Question('Cats are mammals.', true),
    Question('The sun rises in the west.', false),
    Question('Fish can fly.', false),
    Question('There are seven continents on Earth.', true),
    Question('The moon is a planet.', false),
    Question('Water boils at 100 degrees Celsius.', true),
    Question('The human body has four legs.', false),
    Question('There are 12 months in a year.', true),
  ];

  final quiz = Quiz(questions);
  quiz.start();
}
