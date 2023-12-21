
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class CheckButtonW extends ConsumerWidget{
  final VoidCallback _onPressed;
  const CheckButtonW({super.key,required VoidCallback onPressed}):_onPressed = onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonal(onPressed: _onPressed, child: const Text("Check Answer"));
  }

}