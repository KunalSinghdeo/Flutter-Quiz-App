import 'package:flutter/material.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({super.key});
  @override
  State<QuizQuestionScreen> createState() {
    return _QuizQuestionScreenState();
  }
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  @override
  Widget build(context) {
    return const Text("Questions");
  }
}
