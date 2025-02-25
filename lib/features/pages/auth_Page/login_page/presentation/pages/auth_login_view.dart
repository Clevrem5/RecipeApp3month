import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/pages/auth_view_model.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';
import '../widgets/login_widgets/n_recipe_text_field.dart';
import '../widgets/login_widgets/recipe_log_elevated_button.dart';
import '../widgets/login_widgets/recipe_text_field_s.dart';

class LoginPage extends StatelessWidget {
 const LoginPage({super.key,});

  @override
  Widget build(BuildContext context) {
    var vm=context.read<AuthViewModel>();
    AppSizes.init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextFor(
          text: "Login",
          size: 20,
          weight: FontWeight.w600,
          color: RecipeColors.textSmallColor,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        children: [
          SizedBox(height:135*AppSizes.hRatio ),
          Form(
            key: vm.formKey,
            child: Column(
              spacing: 10,
              children: [
                RecipeTextFieldS(
                  label: "Email",
                  hint: "example@example.com",
                  validator: (value) => null,
                  controller: vm.loginContr,
                ),
                NRecipeTextField(
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
            height: 90*AppSizes.hRatio,
          ),
          Center(
            child: Column(
              spacing: 20,
              children: [
                RecipeLogElevatedButton(
                  text: "Login",
                  callback: ()  async {
                    if (await vm.submitForm()&& context.mounted){
                      context.go("/profile");
                    }
                  }
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
      ),
    );
  }
}
