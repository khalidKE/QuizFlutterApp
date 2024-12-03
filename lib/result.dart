import 'package:flutter/material.dart';
import 'package:quizz/data/questions.dart';
import 'package:quizz/quiz.dart';

class Result extends StatelessWidget {
  final List<String> selectedAnswers;

  const Result(this.selectedAnswers, {super.key});

  int getCorrectAnswersCount() {
    int correctAnswerCount = 0;
    for (int i = 0; i < k.length; i++) {
      if (selectedAnswers[i] == k[i].answer[0]) {
        correctAnswerCount++;
      }
    }
    return correctAnswerCount;
  }

  // إنشاء ملخص الإجابات
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'Question Index': i + 1,
        'Question': k[i].text,
        'User Answer': selectedAnswers[i],
        'Correct Answer': k[i].answer[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    int correctAnswers = getCorrectAnswersCount();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 82.0),

                // result
                Text(
                  'You answered $correctAnswers out of ${selectedAnswers.length} questions correctly!',
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),

                ...getSummary().map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            maxRadius: 15,
                            backgroundColor: Colors.white,
                            child: Text(
                              e['Question Index'].toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 47, 42, 42)),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e['Question'].toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Your Answer: ${e['User Answer']}',
                                  style: const TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  'Correct Answer: ${e['Correct Answer']}',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 22.0),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz()),
                    );
                  },
                  child: const Text(
                    'Restart Quiz',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
