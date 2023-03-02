import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductivityButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  const ProductivityButton(
      {super.key,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: this.color,
      onPressed: this.onPressed,
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
