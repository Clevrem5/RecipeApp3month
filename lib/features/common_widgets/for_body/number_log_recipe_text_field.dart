import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/core/colors/colors.dart';

import '../../pages/profile/presentation/widgets/appbar/text_for.dart';

class RecipeNumberTextField extends StatelessWidget {
  const RecipeNumberTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.validator,
    required this.controller,
    this.isView = false,
  });

  final String label, hint;
  final String? Function(String? value) validator;
  final TextEditingController controller;
  final bool isView;

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
              contentPadding: EdgeInsets.only(left: 36, right: 11),
              suffixIcon: isView == true
                  ? IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/svg/eye.svg',
                        fit: BoxFit.cover,
                        width: 24,
                        height: 20,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
