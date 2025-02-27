import 'package:flutter/material.dart';
import 'package:recipe2/core/colors/colors.dart';

import '../../../../../profile/presentation/widgets/appbar/text_for.dart';

class AuthPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthPageAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => Size(double.infinity, 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: TextFor(
        text: title,
        size: 20,
        weight: FontWeight.w600,
        color: RecipeColors.textSmallColor,
      ),
    );
  }
}
