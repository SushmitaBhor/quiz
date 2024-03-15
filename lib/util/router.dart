import 'package:flutter/material.dart';

import 'package:samplequiz/util/router_path.dart';

import '../model/question.dart';
import '../screen/dashboard.dart';
import '../screen/quiz_finish_screen.dart';
import '../screen/quiz_screen.dart';
import '../screen/splash_screen.dart';

class Routerr {
  static Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashPage());
      case DashBoardScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => DashboardPage());
      case QuizScreen:
        final argument = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => QuizPage(
            difficult: argument as String,
            listQuestion: argument as List<Question>,
            id: argument as int,
          ),
        );
      case QuizFinishScreen:
        final argument = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => QuizFinishPage(
                  title: argument as String,
                  answer: {},
                  listQuestion: [],
                ));
    }
  }
}
