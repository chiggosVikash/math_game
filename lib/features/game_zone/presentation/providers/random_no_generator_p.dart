
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/use_cases/game_zone_use_case.dart';

final randomNoGeneratorProvider = NotifierProvider.autoDispose<RandomNoGeneratorP,List<int>>(() => RandomNoGeneratorP());


class RandomNoGeneratorP extends AutoDisposeNotifier<List<int>>{
  final _useCase = GameZoneUseCase();
  @override
  List<int> build(){
    return [_useCase.generateRandomNumber(),_useCase.generateRandomNumber()];
  }

  List<int> generateRandomNo(){
    state = [_useCase.generateRandomNumber(),_useCase.generateRandomNumber()];
    return state;
  }
}