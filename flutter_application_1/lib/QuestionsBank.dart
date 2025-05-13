

import 'package:flutter_application_1/Models/clsAnswer.dart';
import 'package:flutter_application_1/Models/clsQuestion.dart';

List<ClsQuestions> questionsBank = [
  ClsQuestions(
    Question: "What does 'Hot Reload' do in Flutter?",
    Answers: [
      clsAnswer(Title: "Restarts the app", NumberA: 1),
      clsAnswer(Title: "Updates code changes instantly", NumberA: 2),
      clsAnswer(Title: "Clears the cache", NumberA: 3),
      clsAnswer(Title: "Deletes temporary files", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
  ClsQuestions(
    Question: "Which widget is used for infinite scrolling lists?",
    Answers: [
      clsAnswer(Title: "ListView", NumberA: 1),
      clsAnswer(Title: "Column", NumberA: 2),
      clsAnswer(Title: "Stack", NumberA: 3),
      clsAnswer(Title: "Row", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "What is the default programming language used by Flutter?",
    Answers: [
      clsAnswer(Title: "Kotlin", NumberA: 1),
      clsAnswer(Title: "Java", NumberA: 2),
      clsAnswer(Title: "Dart", NumberA: 3),
      clsAnswer(Title: "Swift", NumberA: 4),
    ],
    CorrectAnswer: 3,
  ),
  ClsQuestions(
    Question: "Which widget allows you to position elements on top of each other?",
    Answers: [
      clsAnswer(Title: "Stack", NumberA: 1),
      clsAnswer(Title: "Row", NumberA: 2),
      clsAnswer(Title: "Column", NumberA: 3),
      clsAnswer(Title: "Container", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "What is 'pubspec.yaml' used for?",
    Answers: [
      clsAnswer(Title: "Managing project dependencies", NumberA: 1),
      clsAnswer(Title: "Styling the app", NumberA: 2),
      clsAnswer(Title: "Storing user data", NumberA: 3),
      clsAnswer(Title: "Building UI widgets", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "Which widget provides scrollable functionality?",
    Answers: [
      clsAnswer(Title: "SingleChildScrollView", NumberA: 1),
      clsAnswer(Title: "Container", NumberA: 2),
      clsAnswer(Title: "Expanded", NumberA: 3),
      clsAnswer(Title: "Scaffold", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "Which widget is commonly used for forms input?",
    Answers: [
      clsAnswer(Title: "TextField", NumberA: 1),
      clsAnswer(Title: "AlertDialog", NumberA: 2),
      clsAnswer(Title: "Row", NumberA: 3),
      clsAnswer(Title: "SizedBox", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "What is the root widget when building a Flutter app?",
    Answers: [
      clsAnswer(Title: "Container", NumberA: 1),
      clsAnswer(Title: "Scaffold", NumberA: 2),
      clsAnswer(Title: "MaterialApp", NumberA: 3),
      clsAnswer(Title: "Center", NumberA: 4),
    ],
    CorrectAnswer: 3,
  ),
  ClsQuestions(
    Question: "Which keyword is used to create a constant in Dart?",
    Answers: [
      clsAnswer(Title: "final", NumberA: 1),
      clsAnswer(Title: "const", NumberA: 2),
      clsAnswer(Title: "static", NumberA: 3),
      clsAnswer(Title: "late", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
  ClsQuestions(
    Question: "How do you add padding around a widget?",
    Answers: [
      clsAnswer(Title: "Using the Row widget", NumberA: 1),
      clsAnswer(Title: "Using the Padding widget", NumberA: 2),
      clsAnswer(Title: "Using the ListView widget", NumberA: 3),
      clsAnswer(Title: "Using the Stack widget", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
  ClsQuestions(
    Question: "Which widget is used to create a button?",
    Answers: [
      clsAnswer(Title: "Container", NumberA: 1),
      clsAnswer(Title: "ElevatedButton", NumberA: 2),
      clsAnswer(Title: "SizedBox", NumberA: 3),
      clsAnswer(Title: "AppBar", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
  ClsQuestions(
    Question: "Which function runs first when an app starts?",
    Answers: [
      clsAnswer(Title: "initState()", NumberA: 1),
      clsAnswer(Title: "main()", NumberA: 2),
      clsAnswer(Title: "build()", NumberA: 3),
      clsAnswer(Title: "runApp()", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
  ClsQuestions(
    Question: "Which widget helps in building responsive designs?",
    Answers: [
      clsAnswer(Title: "MediaQuery", NumberA: 1),
      clsAnswer(Title: "Text", NumberA: 2),
      clsAnswer(Title: "IconButton", NumberA: 3),
      clsAnswer(Title: "Card", NumberA: 4),
    ],
    CorrectAnswer: 1,
  ),
  ClsQuestions(
    Question: "Which command creates a new Flutter project?",
    Answers: [
      clsAnswer(Title: "flutter init", NumberA: 1),
      clsAnswer(Title: "flutter start", NumberA: 2),
      clsAnswer(Title: "flutter create project name", NumberA: 3),
      clsAnswer(Title: "flutter new", NumberA: 4),
    ],
    CorrectAnswer: 3,
  ),
  ClsQuestions(
    Question: "What is used to manage the state in Flutter?",
    Answers: [
      clsAnswer(Title: "Widgets", NumberA: 1),
      clsAnswer(Title: "State Management Solutions", NumberA: 2),
      clsAnswer(Title: "Routes", NumberA: 3),
      clsAnswer(Title: "Assets", NumberA: 4),
    ],
    CorrectAnswer: 2,
  ),
];    