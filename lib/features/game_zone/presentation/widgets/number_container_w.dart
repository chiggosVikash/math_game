import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/utils/extensions/context_extension.dart';

import '../providers/random_no_generator_p.dart';

class NumberContainerW extends ConsumerWidget{
  final int _no;
  const NumberContainerW({super.key,required int no}):_no = no;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      height: context.width * 0.4,
      width: context.width * 0.4,
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text("$_no",style: context.theme.textTheme.headlineLarge!.copyWith(color: Colors.white)
        ,)),
    );
  }

}
