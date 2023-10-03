import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() handleTap;
  final String text;

  const Button(this.handleTap, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 233,
      height: 43,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(1000, 80, 45, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: handleTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            decoration: TextDecoration.none,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
