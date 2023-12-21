import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/game_zone/presentation/providers/answer_checker_p.dart';
import 'package:math_game/utils/extensions/context_extension.dart';

class AnswerResultW extends ConsumerWidget {
  const AnswerResultW({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(answerCheckerProvider);
    if(result == null) return const SizedBox();
    return Container(
      height: context.width * 0.4,
      width: context.width * 0.4,
      decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        result == true ? "Correct": "InCorrect",
        style: context.theme.textTheme.headlineLarge!
            .copyWith(color: Colors.white),
      )),
    );
  }
}
