import 'package:flutter/material.dart';
import 'package:quiz_app/Model/answer_button.dart';
import 'package:quiz_app/Model/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {

  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.black])),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
             Text(currentQuestion.text,textAlign: TextAlign.center ,style: const TextStyle(fontSize: 30, color: Colors.white )),
            const SizedBox(height: 30),
           ...currentQuestion.answers.map((answers) =>
            AnswerButton(answers, () {})
            ),
          ],
        ),
      ),
    );
  }
}
