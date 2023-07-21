import 'package:flutter/material.dart';
import 'package:online_shop/out/input_label.dart';

class InputLabel extends StatelessWidget {
  final String labelText;
  final double fontSize;

  const InputLabel({required this.labelText, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        labelText,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}