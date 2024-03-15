import 'dart:convert';

class Score {
  int id;
  String nameUser;
  String categories;
  int score;
  String date;
  int totalAnswer;
  int totalQuestion;

  Score(
      {required this.id,
      required this.nameUser,
      required this.categories,
      required this.score,
      required this.date,
      required this.totalAnswer,
      required this.totalQuestion});
  factory Score.fromJson(String str) =>
      Score.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory Score.fromMap(Map<String, dynamic> json) => Score(
      id: json['id'] as int,
      nameUser: json['nameUser'] as String,
      categories: json['categories'] as String,
      score: json['score'] as int,
      date: json['date'] as String,
      totalAnswer: json['totalAnswer'] as int,
      totalQuestion: json['totalQuestion'] as int);
  Map<String, dynamic> toMap() => {
        'id': id,
        'nameUser': nameUser,
        'categories': categories,
        'score': score,
        'date': date,
        'totalAnswer': totalAnswer,
        'totalQuestion': totalQuestion
      };
}
