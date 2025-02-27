import 'package:flutter/material.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';

import '../../../categoryPage/presentation/widgets/category_page_nav.dart';
import '../widgets/appbar/profile_page_app_bar.dart';
import '../widgets/body/profile_body.dart';
import 'profile_viewmodel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
//
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) {
        if (vm.myProfile == null) {
          return Center(child: CircularProgressIndicator()); //
        }
        return SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: RecipeColors.backRoundColor,
              extendBody: true,
              appBar: ProfilePageAppBar(vm: vm),
              body: TabBarView(physics: NeverScrollableScrollPhysics(),
                children: [
                  ProfileBody(vm: vm),
                  Center(child: Text("data")),
                ],
              ),
              bottomNavigationBar: RecipeBottomNav(),
            ),
          ),
        );
      },
    );
  }
}
