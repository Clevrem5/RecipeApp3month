import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/widgets/login_widgets/login_page_list_view.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
      body: LoginPageListView(),
    );
  }
}
