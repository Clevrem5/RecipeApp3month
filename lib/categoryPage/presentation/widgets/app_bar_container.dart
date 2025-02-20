import 'package:flutter/material.dart';
import 'package:recipe2/core/colors/colors.dart';

import 'button_appbar.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.callback,
  });

  final String image;
  final double width, height;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: RecipeColors.iconColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ButtonAppbar(
        image: image,
        callback: callback,
        width: width,
        height: height,
      ),
    );
  }
}
