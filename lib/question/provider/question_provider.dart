import 'package:ambition/question/data/question_data.dart';
import 'package:ambition/question/model/question_model.dart';
import 'package:flutter/material.dart';

class QuestionProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  final List<QuestionModel> _questions = questionList;

  QuestionModel get currentQuestion => _questions[_currentIndex];

  bool showImage = false;
  bool showOutput = false;

  bool get isLastQuestion => _currentIndex == _questions.length - 1;

  void showNextQuestion() {
    if (_currentIndex < _questions.length - 1) {
      _currentIndex++;
      notifyListeners();
    }
  }

  void run() {
    showImage = true;
    showOutput = true;
    notifyListeners();
  }

  void reset() {
    showImage = false;
    showOutput = false;
    // _currentIndex = 0;
    notifyListeners();
  }
}
