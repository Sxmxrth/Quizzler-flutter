import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  static final List<Questions> _questionAndAnswer = [
    Questions(q: "Delhi is the capital of India", a: true),
    Questions(q: "Your name is Samarth", a: true),
    Questions(q: "A shrimp fried this rice", a: false),
    Questions(q: "SPIT is in Sanpada", a: false),
    Questions(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questions(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  static int index = 0;

  static void nextQuestion(context) {
    if (index < _questionAndAnswer.length - 1) {
      index++;
    } else {
      Alert(
              context: context,
              title: "Completed",
              desc: "You finished thee Quiz")
          .show();
      index = 0;
    }
  }

  static String getQuestionText() {
    return _questionAndAnswer[index].questionText;
  }

  static bool getAnswerText() {
    return _questionAndAnswer[index].questionAnswer;
  }
}
