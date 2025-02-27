import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/core/router/routes_name.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/widgets/sign_up-widgets/auth_page_app_bar.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_elevated_button.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_text_field.dart';

import '../../../../../common_widgets/for_body/number_log_recipe_text_field.dart';
import 'auth_view_model.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.vm,
  });

  final AuthViewModel vm;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => Scaffold(
        appBar: AuthPageAppBar(title: "Login",),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          children: [
            SizedBox(height: 135 * AppSizes.hRatio),
            Form(
              key: vm.formKey,
              child: Column(
                spacing: 10,
                children: [
                  RecipeAuthTextField(
                    label: "Email",
                    hint: "example@example.com",
                    validator: (value) => null,
                    controller: vm.loginContr,
                  ),
                  RecipeNumberTextField(
                    label: "Password",
                    hint: "● ● ● ● ● ● ● ●",
                    validator: (value) => null,
                    controller: vm.passwordContr,
                    isView: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90 * AppSizes.hRatio,
            ),
            Column(
              spacing: 20,
              children: [
                RecipeLogElevatedButton(
                    text: "Login",
                    callback: () async {
                      if (await vm.submitForm() && context.mounted) {
                        context.go(Routes.profile);
                      }
                    }),
                RecipeLogElevatedButton(
                  text: "Sign Up",
                  callback: () {
                    context.go(Routes.signUp);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
