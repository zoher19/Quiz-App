

import 'package:flutter_application_1/Models/clsAnswer.dart';

class ClsQuestions{

  final String Question;
  final int CorrectAnswer;
  final List<clsAnswer> Answers;

  ClsQuestions({
    required this.Question,
    required this.CorrectAnswer,
    required this.Answers,
  });
}