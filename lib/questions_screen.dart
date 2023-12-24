import 'package:flutter/material.dart';
import 'package:quiz_app/Model/answer_button.dart';
import 'package:quiz_app/Model/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  int currentIndex = 0;

  void nextQuestion() {
    setState(() {
      currentIndex += 1;
    });
  }
  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndex];

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.black])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(shadows: [const Shadow(offset: Offset.zero,blurRadius: 0.1)] ,fontSize: 38, color: const Color(
                  0xFFE6ACF8)),
            ),
            const SizedBox(height: 50),
            ...currentQuestion.getShuffledAnswers().map(
                  (answer) => AnswerButton(answer, nextQuestion),
                )
          ],
        ),
      ),
    );
  }
}
