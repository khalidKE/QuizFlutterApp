import 'dart:developer';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:quizz/Modules/answerText.dart';
import './data/questions.dart';

class Question extends StatefulWidget {
  const Question(this.answerScreen, {super.key});
  final void Function(String) answerScreen;

  @override
  State<Question> createState() => _QuestionState();
}

int i = 0;

class _QuestionState extends State<Question> {
  void nextQuestion(String ans) {
    widget.answerScreen(ans);
    log(ans);
    setState(() {
      ++i;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (i == 10) {
      i = 0;
    }
    var kk = k[i];

    return Container(
      margin: const EdgeInsets.all(36.0),
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              kk.text,
              style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ...kk.getShuffledAnswers().map(
              (e) {
                return AnswerText(
                  answer: e,
                  onPressed: () {
                    nextQuestion(e);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
