import 'package:flutter/material.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/widgets/login_widgets/n_recipe_text_field.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/widgets/login_widgets/recipe_log_elevated_button.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/widgets/login_widgets/recipe_text_field_s.dart';

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
        Form(
          child: Column(
            spacing: 10,
            children: [
              RecipeTextFieldS(
                label: "Email",
                hint: "example@example.com",
                validator: (value) => null,
                controller: controller,
              ),
              NRecipeTextField(
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
          height: 30,
        ),
        Center(
          child: Column(
            spacing: 20,
            children: [
              RecipeLogElevatedButton(
                text: "Log In",
                callback: () {},
              ),
              RecipeLogElevatedButton(
                text: "Sign Up",
                callback: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
