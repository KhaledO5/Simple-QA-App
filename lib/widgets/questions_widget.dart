import 'package:flutter/material.dart';
import 'package:quiz_app/constatns.dart';

class questionWidget extends StatelessWidget {
  const questionWidget(
      {Key? key,
      required this.question,
      required this.indexAction,
      required this.totalQuestions})
      : super(key: key);
  final String question;
  final int indexAction;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestions: $question',
        style: TextStyle(fontSize: 24, color: neutral),
      ),
    );
  }
}
