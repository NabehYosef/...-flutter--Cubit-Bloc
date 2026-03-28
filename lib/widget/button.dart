import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  const ButtonCounter({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
