import "package:flutter/material.dart";
import "package:adv_basics/start_screen.dart";
import "package:adv_basics/questions_screen.dart";

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
  Widget? activeScreen;
  //used Widget as the return type

  @override
//help with some extra initialization work, when state object is created for first time
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuizQuestionScreen();
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
          child: activeScreen,
        ),
      ),
    );
  }
}
