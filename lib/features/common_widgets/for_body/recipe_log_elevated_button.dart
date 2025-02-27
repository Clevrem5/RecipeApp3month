import 'package:flutter/material.dart';
import 'package:recipe2/core/colors/colors.dart';

import '../../RecipePages/profile/presentation/widgets/appbar/text_for.dart';


class RecipeLogElevatedButton extends StatelessWidget {
  const RecipeLogElevatedButton({
    super.key,
    required this.text,
    required this.callback,
    this.size= const Size(207, 45),
    this.color= RecipeColors.iconColor,
    this.textColor= RecipeColors.buttonColor,
  });

  final String text;
  final VoidCallback callback;
  final Size size;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: size,
        ),
        child: TextFor(
          text: text,
          size: 20,
          color: textColor
        ),
      ),
    );
  }
}
