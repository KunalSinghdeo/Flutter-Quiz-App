import "package:flutter/material.dart";
import "package:adv_basics/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  //createState createa an instance of a class that based on State related to Quiz
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
// widgets can also be stored in variable as they are also objects
  var activeScreen = const StartScreen();

  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen()
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(221, 115, 0, 255),
                Color.fromARGB(221, 166, 93, 255),
              ],
              // for gradient from topleftcorner to bottomRight corner
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
