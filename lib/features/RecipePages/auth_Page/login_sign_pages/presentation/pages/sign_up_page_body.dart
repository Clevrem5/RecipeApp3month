import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/core/router/routes_name.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/SignUpviewModel.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/snakbar.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/widgets/sign_up-widgets/recipe_data_textfield.dart';
import 'package:recipe2/features/RecipePages/profile/presentation/widgets/appbar/text_for.dart';
import 'package:recipe2/features/common_widgets/for_body/number_log_recipe_text_field.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_elevated_button.dart';
import 'package:recipe2/features/common_widgets/for_body/recipe_log_text_field.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({
    super.key,
    required this.vm,
  });

  final SignUpViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
      children: [
        Form(
          key: vm.formKey,
          child: Column(
            spacing: 10,
            children: [
              RecipeAuthTextField(
                label: "First Name",
                hint: "John Doe",
                validator: (value) => null,
                controller: vm.firstNameContr,
              ),
              RecipeAuthTextField(
                label: "Last Name",
                hint: "Clevrem",
                validator: (value) => null,
                controller: vm.lastNameContr,
              ),
              RecipeAuthTextField(
                label: "UserName",
                hint: "Clevrem",
                validator: (value) => null,
                controller: vm.userNameContr,
              ),
              RecipeAuthTextField(
                label: "Email",
                hint: "Example@example.com",
                validator: (value) => null,
                controller: vm.emailContr,
              ),
              RecipeAuthTextField(
                label: "Mobile Number",
                hint: "+998945987905",
                validator: (value) => null,
                controller: vm.phoneNumberContr,
              ),
              RecipeDataTextField(),
              RecipeNumberTextField(
                label: "Password",
                hint: "● ● ● ● ● ● ● ●",
                validator: (value) => null,
                controller: vm.passwordContr,
              ),
              RecipeNumberTextField(
                label: "Confirm Password",
                hint: "● ● ● ● ● ● ● ●",
                controller: vm.confirmPasswordContr,
                validator: (value) {
                  if (vm.confirmPasswordContr.text != vm.passwordContr.text) {
                    return "Kiritilgan parol bir-xil bo'lishi shart";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            bottom: 90,
          ),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFor(
                text: "     By continuing, you agree to "
                    "Terms of Use and Privacy Policy.",
                size: 14,
                height: true,
                family: "League Spartan",
                line: true,
              ),
              RecipeLogElevatedButton(
                text: "Sing Up",
                size: Size(195, 45),
                textColor: Colors.white,
                color: RecipeColors.buttonColor,
                callback: () async {
                  if (vm.formKey.currentState!.validate()) {
                    if (await vm.signUp() && context.mounted) {
                      await showDialog(
                        context: context,
                        builder: (context) => snakbar(),
                      );
                    }
                  }
                },
              ),
              GestureDetector(
                onTap: () {
                  context.go(Routes.login);
                },
                child: TextFor(
                  text: "    Already have an account?  Log In",
                  size: 13,
                  height: true,
                  family: "League Spartan",
                  line: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
