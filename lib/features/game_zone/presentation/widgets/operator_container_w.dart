import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/utils/constants/constants.dart';
import 'package:math_game/utils/enums/operator_e.dart';
import 'package:math_game/utils/extensions/context_extension.dart';

class OperatorContainerW extends ConsumerWidget {
  final OperatorE _operator;
  const OperatorContainerW({super.key, required OperatorE operator})
      : _operator = operator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: context.width * 0.2,
      width: context.width * 0.2,
      decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        Constants.operatorSymbols[_operator]!,
        style: context.theme.textTheme.headlineLarge!.copyWith(color: Colors.white),
      )),
    );
  }
}
