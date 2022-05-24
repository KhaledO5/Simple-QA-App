import 'package:flutter/material.dart';
import 'package:quiz_app/constatns.dart';

class resultBox extends StatelessWidget {
  const resultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPerssed,
  }) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPerssed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Result',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 22.0,
              ),
            ),
            const SizedBox(height: 20.0),
            CircleAvatar(
              child: Text(
                '$result/$questionLength',
                style: TextStyle(fontSize: 30.0),
              ),
              radius: 70.0,
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow
                  : result < questionLength / 2
                      ? incorrect
                      : correct,
            ),
            const SizedBox(height: 20.0),
            Text(
              result == questionLength / 2
                  ? 'Almost there'
                  : result < questionLength / 2
                      ? 'Try again'
                      : 'Great',
              style: const TextStyle(color: Colors.lightBlue),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: onPerssed,
              child: const Text(
                "Start Over ",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
