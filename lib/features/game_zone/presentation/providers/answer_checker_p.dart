

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/utils/enums/operator_e.dart';

import '../../domain/use_cases/game_zone_use_case.dart';

final answerCheckerProvider = NotifierProvider.autoDispose<AnswerCheckerP,bool?>(() => AnswerCheckerP());

class AnswerCheckerP extends AutoDisposeNotifier<bool?>{
  final _useCase = GameZoneUseCase();
  @override
  bool? build() {
    return null;
  }

  bool? checkAnswer({required String ans, required int no1, required int no2,required OperatorE operator}){
    ans = ans.trim();
    if(ans.isEmpty) {
      state = null;
      return state;
    }
    final double answer = double.parse(ans);
    state = _useCase.checkAnswer(answer: answer,
        no2: no2,
        no1: no1, operator: operator);
    return state;
  }

}