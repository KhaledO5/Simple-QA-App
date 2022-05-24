import 'package:flutter/material.dart';
import 'package:quiz_app/models/db_connect.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var db = DBconnect();
  db.addQuestion(Question(
      id: "1",
      options: {
        'North America': false,
        'South America': true,
        'Europe': false,
        'Australasia': false,
      },
      title: "In which continent are Chile, Argentina and Brazil?"));
  db.addQuestion(Question(
      id: "2",
      options: {
        'True': false,
        'False': true,
      },
      title: "The atomic number for lithium is 17"));
  db.addQuestion(Question(
      id: "3",
      options: {
        'True': false,
        'False': true,
      },
      title: "Marrakesh is the capital of Morocco"));
  db.addQuestion(Question(
      id: "4",
      options: {
        'True': true,
        'False': false,
      },
      title: " Alliumphobia is a fear of garlic"));
  db.addQuestion(Question(
      id: "5",
      options: {
        'geographic grids': true,
        'latitudes': false,
        'longitudes': false,
        'None of the above': false,
      },
      title: " The intersecting lines drawn on maps and globes are"));
  db.addQuestion(Question(
      id: "6",
      options: {
        'True': true,
        'False': false,
      },
      title: "  A lion's roar can be heard up to eight kilometres away"));
  db.addQuestion(Question(
      id: "7",
      options: {
        'True': true,
        'False': false,
      },
      title: " In Scotland, the unicorn is their national animal."));
  db.addQuestion(Question(
      id: "8",
      options: {
        'True': false,
        'False': true,
      },
      title: " The moon is wider than Australia."));
  db.addQuestion(Question(
      id: "9",
      options: {
        'True': false,
        'False': true,
      },
      title: " Switzerland’s currency is the Euro"));
  db.addQuestion(Question(
      id: "10",
      options: {
        'Potassium carbonate': false,
        'Potassium chloride': false,
        'Sodium bicarbonate': true,
        'Potassium hydroxide': false,
      },
      title: " Ordinary table salt is sodium chloride. What is baking soda?"));

  db.fetchQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
