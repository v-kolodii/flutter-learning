import 'question.dart';

class QuizCore {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'Water freezes at 0°C.', questionAnswer: true),
    Question(questionText: 'Humans have two legs.', questionAnswer: true),
    Question(
      questionText: 'Birds can breathe underwater without air.',
      questionAnswer: false,
    ),
    Question(questionText: 'Dogs can fly naturally.', questionAnswer: false),
    Question(questionText: 'The Earth is flat.', questionAnswer: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() => _questionNumber = 0;

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
}
