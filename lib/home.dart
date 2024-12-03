import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/assets/images/quiz-logo.png'),
          const Text(
            'Learn Flutter!',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          ElevatedButton.icon(
            onPressed: switchScreen,
            label: const Text('Let\'s Quiz'),
            icon: const Icon(Icons.ads_click_sharp),
          ),
        ],
      ),
    );
  }
}
