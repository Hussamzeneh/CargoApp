import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

class CustomizedButton extends StatelessWidget {
  final String title;
  final bool condition;
  final Function() onPressed;
  final Color color;

  const CustomizedButton({
    Key? key,
    required this.title,
    required this.condition,
    required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: condition,
      builder: (context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(410,55),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
          child: Center(child: Text(title)),
      ),
      fallback: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
