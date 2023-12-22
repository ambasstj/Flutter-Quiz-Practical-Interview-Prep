import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final Function() onTap;

  AnswerButton(this.answer, this.onTap, {super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 15),
            elevation: 20,
            backgroundColor: const Color(0x673AB7FF),
            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
          ),
          onPressed: onTap,
          child: Text(
            answer,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
