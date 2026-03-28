import 'package:flutter/material.dart';

class TextCounter
    extends StatelessWidget {
  final Color color;
  final int counter;
  const TextCounter({
    super.key,
    required this.counter,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${counter}",
      style: TextStyle(
        fontSize: 40,
        color: color,
      ),
    );
  }
}
