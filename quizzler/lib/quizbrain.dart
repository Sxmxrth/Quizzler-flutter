import 'questions.dart';

class QuizBrain {
  static final List<Questions> _questionAndAnswer = [
    Questions(q: "Delhi is the capital of India", a: true),
    Questions(q: "Your name is Samarth", a: true),
    Questions(q: "A shrimp fried this rice", a: false),
    Questions(q: "SPIT is in Sanpada", a: false)
  ];

  static int index = 0;

  static void nextQuestion() {
    if (index < _questionAndAnswer.length) {
      index++;
    } else {
      index = 0;
    }
  }

  static String getQuestionText() {
    return QuizBrain._questionAndAnswer[index].questionText;
  }

  static bool getAnswerText() {
    return QuizBrain._questionAndAnswer[index].questionAnswer;
  }
}
