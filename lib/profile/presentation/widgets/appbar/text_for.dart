import 'package:flutter/material.dart';

class TextFor extends StatelessWidget {
  const TextFor({
    super.key,
    required this.text,
    required this.size,
    this.color = Colors.white,
    this.weight = FontWeight.w500,
    this.family = "Poppins",
    this.line = false,
    this.height = false,
  });

  // final ProfileViewModel vm;
  final String text;
  final double size;
  final Color color;
  final bool height;

  final FontWeight weight;

  final String family;
  final bool? line;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: line == true ? 2 : null,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: TextStyle(
        height: height != true ? null : 1,
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: family,
      ),
    );
  }
}
