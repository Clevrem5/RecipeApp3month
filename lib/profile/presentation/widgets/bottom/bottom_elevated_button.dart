import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';

import '../../../../core/colors/colors.dart';

class BottomElevatedButton extends StatelessWidget {
  const BottomElevatedButton({
    super.key,
    required this.text,
    required this.callback,
    this.width= 175,
    this.height= 30,
    this.color=RecipeColors.iconColor,
  });

  final String text;
  final VoidCallback callback;
  final double width, height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        minimumSize: Size(
          width * AppSizes.wratio,
          height * AppSizes.hRatio,
        ),
        backgroundColor: color,
      ),
      child: Center(
        child: TextFor(
          text: text,
          size: 14,
          color: RecipeColors.textSmallColor,
        ),
      ),
    );
  }
}
