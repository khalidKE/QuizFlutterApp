# Quiz Flutter Application

This repository contains a Flutter-based quiz application that allows users to answer multiple-choice questions and provides a summary of their results. The app features an interactive user interface, gradient backgrounds, and a result evaluation screen with a breakdown of answers.

---

## **Features**
- Dynamic question and answer flow with shuffled answer options.
- Gradient background for an aesthetically pleasing UI.
- Summary of results, including correct and incorrect answers.
- Score evaluation displayed at the end of the quiz.
- Restart functionality to replay the quiz.

---

## **File Structure**
- `quiz.dart`: Main application file handling navigation and state management.
- `result.dart`: Displays quiz results, including a summary of user answers.
- `question.dart`: Handles the display of questions and answer selection.
- `data/questions.dart`: Contains predefined questions and answers.
- `Modules/answerText.dart`: Custom widget for rendering answer options.

---

## **Setup Instructions**
1. **Clone the repository:**
   ```bash
   git clone https://github.com/khalidKE/QuizFlutterApp.git
   cd QuizFlutterApp
   ```

2. **Install dependencies:**
   Run the following command to install the necessary packages:
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   Use the following command to run the app:
   ```bash
   flutter run
   ```

---

## **Screens Overview**

### 1. **Home Screen**
   - Displays the welcome interface with a button to start the quiz.

### 2. **Question Screen**
   - Displays one question at a time.
   - Users can select answers from shuffled options.

### 3. **Result Screen**
   - Shows the number of correct answers out of total questions.
   - Displays a detailed summary of each question, including:
     - Question text.
     - User's answer.
     - Correct answer.
   - Provides a "Restart Quiz" button to retry.

---

## **Gradient Design**
The app features a beautiful gradient background using `LinearGradient`:
```dart
BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);
```

---

## **How Questions Work**
- Questions are stored in `data/questions.dart` with the following structure:
  ```dart
  class QuestionModel {
    final String text;
    final List<String> answer;

    List<String> getShuffledAnswers() {
      return [...answer]..shuffle();
    }
  }
  ```

- Answers are dynamically shuffled to ensure variety.

---

## **Restart Functionality**
The app includes a restart feature implemented in the `Result` screen:
```dart
ElevatedButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Quiz()),
    );
  },
  child: const Text('Restart Quiz'),
);
```

---

## **Contributions**
Contributions are welcome! If you encounter any bugs or have feature suggestions:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

---

## **License**
This project is open-source and available.
Enjoy coding and quizzing! 😊


<img src="https://github.com/user-attachments/assets/17389a3a-6aba-49d1-b3c7-826eecffea59" width="400" height="800" /><img src="https://github.com/user-attachments/assets/fdac5e69-17d3-454d-b94d-6a25dda64727" width="400" height="800" /><img src="https://github.com/user-attachments/assets/76414741-7ccf-473a-a945-8f13db67093e" width="400" height="800" /><img src="https://github.com/user-attachments/assets/40d05d53-4ece-4e42-870c-27fbf133fe20" width="400" height="800" />



