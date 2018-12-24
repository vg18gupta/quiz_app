import './question.dart';


class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex =-1;
  int _score=0;

  Quiz(this._questions){
    _questions.shuffle();

  }
  List<Question> get questions => _questions;
  int get lengh => _questions.length;
  int get questionNumber => _currentQuestionIndex;
  int get score => _score;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex>=lengh) return null;
    return _questions[_currentQuestionIndex];
  }

  int get length => null;

  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  }
}
