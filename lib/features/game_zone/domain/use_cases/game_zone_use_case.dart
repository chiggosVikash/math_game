
import 'dart:math';

import '../../../../utils/enums/operator_e.dart';

class GameZoneUseCase{
  final _random = Random();

  int generateRandomNumber(){
    return _random.nextInt(100);
  }

  bool checkAnswer({required int no1,required int no2,required double answer,required OperatorE operator}){
    switch(operator){
      case OperatorE.add:
        return no1+no2 == answer;
      case OperatorE.sub:
        return no1-no2 == answer;
      case OperatorE.mul:
        return no1*no2 == answer;
      case OperatorE.div:
        return no1/no2 == answer;
    }
  }
}