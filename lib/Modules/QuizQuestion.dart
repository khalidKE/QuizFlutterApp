// ignore: file_names

class QuizQuestion {
  QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;
  List<String> getShuffledAnswers() {
    // ignore: non_constant_identifier_names
    final ShuffledList = List.of(answer);
    ShuffledList.shuffle();
    return ShuffledList;
  }
}
