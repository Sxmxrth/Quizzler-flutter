// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'quizbrain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                QuizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.green,
            child: TextButton(
              onPressed: () {
                setState(() {
                  QuizBrain.getAnswerText() == true
                      ? scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ))
                      : scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                  QuizBrain.nextQuestion();
                });
                print("User picked True");
              },
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.red,
            child: TextButton(
              onPressed: () {
                setState(() {
                  QuizBrain.getAnswerText() == false
                      ? scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ))
                      : scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                  QuizBrain.nextQuestion();
                });
              },
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
