// ignore: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerText extends StatelessWidget {
    AnswerText( {required this.answer, required this.onPressed,super.key});
  final String answer;
    var onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ElevatedButton(
            onPressed: onPressed,
            // style: ElevatedButton.styleFrom(
            //     padding: EdgeInsets.all(1.0),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadiusDirectional.circular(1  ))),
            //left, top, right, bottom
            // style: ElevatedButton.styleFrom( padding: EdgeInsets.fromLTRB(112, 10, 5, 7)),

            child: Text(
              answer,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            )));
  }
}
