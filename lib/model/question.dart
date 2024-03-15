import 'dart:convert';

class Question {
  String category;
  String type;
  String difficulty;
  String question;
  String correctAnswer;
  List<String> incorrectAnswers;

  Question(
      {required this.category,
      required this.type,
      required this.difficulty,
      required this.question,
      required this.correctAnswer,
      required this.incorrectAnswers});

  factory Question.fromJson(String str) =>
      Question.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory Question.fromMap(Map<String, dynamic> json) => Question(
      category: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
      question: json['question'] as String,
      correctAnswer: json['correct_answer'] as String,
      incorrectAnswers: json['incorrect_answers'].cast<String>());
  Map<String, dynamic> toMap() => {
        'category': category,
        'type': type,
        'difficulty': difficulty,
        'question': question,
        'correct_answer': correctAnswer,
        'incorrect_answers': incorrectAnswers
      };
}
