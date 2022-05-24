import 'package:flutter/material.dart';
import 'package:quiz_app/constatns.dart';

class nextButton extends StatelessWidget {
  const nextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: neutral, borderRadius: BorderRadius.circular(15.0)),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        "Next Question",
        textAlign: TextAlign.center,
      ),
    );
  }
}
