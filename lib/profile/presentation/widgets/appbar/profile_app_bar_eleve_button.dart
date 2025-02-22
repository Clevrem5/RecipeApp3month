import 'package:flutter/material.dart';
import 'package:recipe2/profile/presentation/widgets/bottom/bottom_elevated_button.dart';

class RecipeElevetedButton extends StatelessWidget {
  const RecipeElevetedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BottomElevatedButton(
          text: "Edit Profile",
          callback: () {},
        ),
        const SizedBox(
            width: 5), // `spacing` ishlamaydi, shuning uchun `SizedBox`
        BottomElevatedButton(
          text: "Share Profile",
          callback: () {},
        ),
      ],
    );
  }
}
