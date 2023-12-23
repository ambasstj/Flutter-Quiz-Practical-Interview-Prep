import 'package:flutter/material.dart';

class Question{
  String text;
  List<String> answers;

  Question(this.text, this.answers);

  List<String> getShuffledAnswers(){
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }


}