import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/game_zone/presentation/providers/answer_checker_p.dart';
import 'package:math_game/features/game_zone/presentation/providers/check_button_w.dart';
import 'package:math_game/features/game_zone/presentation/providers/random_no_generator_p.dart';
import 'package:math_game/features/game_zone/presentation/widgets/answer_area_w.dart';
import 'package:math_game/features/game_zone/presentation/widgets/answer_result_w.dart';
import 'package:math_game/features/game_zone/presentation/widgets/divider_w.dart';
import 'package:math_game/features/game_zone/presentation/widgets/number_container_w.dart';
import 'package:math_game/features/game_zone/presentation/widgets/operator_container_w.dart';
import 'package:math_game/utils/extensions/context_extension.dart';

import '../../../../utils/enums/operator_e.dart';

@immutable
class GameZoneSArgs{
  final String gameName;
  final OperatorE operation;
  const GameZoneSArgs({required this.gameName,required this.operation});
}

class GameZoneS extends ConsumerStatefulWidget {
  static const routeAddress = "/gameZone";
  final GameZoneSArgs _args;
  const GameZoneS({super.key,required GameZoneSArgs args}):_args = args;

  @override
  ConsumerState createState() => _GameZoneSState();
}

class _GameZoneSState extends ConsumerState<GameZoneS> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._args.gameName),
      ),
      body: SingleChildScrollView(child:
        Column(children: [
          Consumer(builder: (context, ref, child) {
            final numbers = ref.watch(randomNoGeneratorProvider);
            return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NumberContainerW(no: numbers[0],),
              NumberContainerW(
                no: numbers[1],),

          ],); },),

          SizedBox(height: context.height*.02,),
          OperatorContainerW(operator: widget._args.operation,),
          SizedBox(height: context.height*.03,),
          const DividerW(height: 5,),
          SizedBox(height: context.height*.05,),
          const AnswerResultW(),
          SizedBox(height: context.height*.02,),
          // Spacer(),
          AnswerAreaW(controller: _controller),
          SizedBox(height: context.height*.02,),
          CheckButtonW(onPressed: (){
           ref.read(answerCheckerProvider.notifier).checkAnswer(ans: _controller.text, no1: ref.read(randomNoGeneratorProvider)[0],
            no2: ref.read(randomNoGeneratorProvider)[1], operator: widget._args.operation);

           ref.read(randomNoGeneratorProvider.notifier).generateRandomNo();

          })

        ],)
        ,)
    );
  }
}
