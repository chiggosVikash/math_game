
import '../enums/operator_e.dart';

class Constants{
  static const List<String> menus = [
    "Addition",
    "Subtraction",
    "Multiplication",
    "Division",
  ];

  static const Map<String,OperatorE> operations = {
    "Addition":OperatorE.add,
    "Subtraction":OperatorE.sub,
    "Multiplication":OperatorE.mul,
    "Division":OperatorE.div,
  };

  static const Map<OperatorE,String> operatorSymbols = {
    OperatorE.add:"+",
    OperatorE.sub:"-",
    OperatorE.mul:"x",
    OperatorE.div:"/",
  };

}