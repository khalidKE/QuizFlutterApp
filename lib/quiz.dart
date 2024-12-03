import 'package:flutter/material.dart';
import 'package:quizz/home.dart';
import 'package:quizz/question.dart';
import 'package:quizz/result.dart';
import './data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  void addAnswerToList(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == k.length) {
      setState(() {
        currentScreen =  Result (selectedAnswers);
        // currentScreen = Home(switchScreen);
        selectedAnswers = [];
      });
    }
  }

  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = Home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      currentScreen = Question(addAnswerToList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
