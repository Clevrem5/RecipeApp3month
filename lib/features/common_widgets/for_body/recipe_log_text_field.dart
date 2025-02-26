import 'package:flutter/material.dart';
import 'package:recipe2/core/colors/colors.dart';

import '../../pages/profile/presentation/widgets/appbar/text_for.dart';

class RecipeAuthTextField extends StatelessWidget {
  const RecipeAuthTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.validator,
    required this.controller,
  });

  final String label, hint;
  final String? Function(String? value) validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFor(text: label, size: 15),
        Center(
          child: TextFormField(
            validator: validator,
            controller: controller,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: RecipeColors.backRoundColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: RecipeColors.iconColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                height: 1,
                fontSize: 14,
                color: RecipeColors.backRoundColor.withValues(alpha: 0.45),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 36),
              // errorText: "Banzai!",
            ),
          ),
        ),
      ],
    );
  }
}
