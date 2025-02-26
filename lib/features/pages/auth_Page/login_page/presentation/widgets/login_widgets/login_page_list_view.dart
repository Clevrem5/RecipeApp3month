import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/features/common_widgets/for_body/number_log_recipe_text_field.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_elevated_button.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_text_field.dart';

class LoginPageListView extends StatelessWidget {
   LoginPageListView({
    super.key,
  });

  final controller = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      children: [
        SizedBox(height:135*AppSizes.hRatio ),
        Form(
          child: Column(
            spacing: 10,
            children: [
              RecipeAuthTextField(
                label: "Email",
                hint: "example@example.com",
                validator: (value) => null,
                controller: controller,
              ),
              RecipeNumberTextField(
                label: "Password",
                hint: "● ● ● ● ● ● ● ●",
                validator: (value) => null,
                controller: controller2,
                isView: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 90*AppSizes.hRatio,
        ),
        Center(
          child: Column(
            spacing: 20,
            children: [
              RecipeLogElevatedButton(
                text: "Login",
                callback: () {},
              ),
              RecipeLogElevatedButton(
                text: "Sign Up",
                callback: () {
                  context.go('/category');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
