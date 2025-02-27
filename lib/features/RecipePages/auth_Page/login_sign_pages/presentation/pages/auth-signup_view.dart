import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/SignUpviewModel.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/sign_up_page_body.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/widgets/sign_up-widgets/auth_page_app_bar.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key, required this.vm});

  final SignUpViewModel vm;

  final con = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(
        repo: context.read(),
      ),
      builder: (context, child) {
        final vm = context.read<SignUpViewModel>();
        return Scaffold(
          appBar: AuthPageAppBar(
            title: "Sign Up",
          ),
          body: SignUpPageBody(vm: vm),
        );
      },
    );
  }
}
