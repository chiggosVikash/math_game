import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnswerAreaW extends ConsumerWidget {
  final TextEditingController _controller;
  const AnswerAreaW({super.key,required TextEditingController controller}):
        _controller = controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Answer",
      ),
      controller: _controller,
    );
  }
}
