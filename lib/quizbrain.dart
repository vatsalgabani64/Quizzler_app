import 'questions.dart';

class QuizBrain{
  int _questionNumber=0;
  List<Questions> _questionBank = [
    Questions(questionText:'Whenever you live,there will always be war \n -Hashirama Senju',questionAnswer:true),
    Questions(questionText:'Those Who Do Not Understand True Pain Can Never Understand True Peace \n -Pain',questionAnswer:true),
    Questions(questionText: 'You overestimate your own abilities with no idea of the depth of my own \n -Itachi Uchiha', questionAnswer: true),
    Questions(questionText: 'No Matter How Pathetic The Reason, It’s Enough To Start A War \n -Obito Uchiha', questionAnswer: false),
    Questions(questionText: 'Wake up to reality! Nothing ever goes as planned in this world. The longer you live, the more you realize that in this reality only pain, suffering and futility exist. \n– Madara Uchiha', questionAnswer: true),
    Questions(questionText: 'When a man learns to love, he must bear the risk of hatred. \n -Pain', questionAnswer: false),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length-1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber=0;
  }
}