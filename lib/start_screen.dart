import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  //need to have a constructor function here by repeating class name, accepting named args called key
  //which will for forwarded to parent widget using super
  const StartScreen({super.key});

  // must add a build method for stateless class which return a Widget and should accept context args
  //implementing and overwriting method exected by stateless widget
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(135, 255, 255, 255),
        ),
        // don't use opacity widget as its performance intensive use color instead and set its opacity
        // Opacity(
        //   opacity: 0.8,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(height: 80),
        const Text(
          "Learn Flutter the fun way!!",
          style: TextStyle(
            color: Color.fromARGB(255, 244, 240, 249),
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Color.fromARGB(255, 244, 240, 249),
            ),
            foregroundColor: const Color.fromARGB(255, 244, 240, 249),
          ),
          //icon needs a widget
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ],
    ));
  }
}
