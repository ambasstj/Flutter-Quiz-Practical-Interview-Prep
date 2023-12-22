import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  final List<Color> color;
  final void Function() startQuiz;

   StartScreen(this.startQuiz, {super.key}) :
      color = [Colors.purple,Colors.black];

  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient( begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: color)
      ),
    child: Center(
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/quiz-logo.png", color: const Color.fromRGBO(211, 111, 188, 0.5),),
           Padding(
            padding: const EdgeInsets.only(top:35),
            child: Column(
              children: [
                const Text("Learn Flutter The Fun Way!",
                  style: TextStyle
                    (color: Colors.white,
                    fontSize: 30,),),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: OutlinedButton.icon(
                      onPressed: startQuiz,
                      icon: const Icon(Icons.arrow_right_alt,),
                      label: const Text("Quiz Page",
                        style: TextStyle(
                            decoration: TextDecoration.underline),)),
                )
              ],
            ),
          )],
        )),);
  }
}
