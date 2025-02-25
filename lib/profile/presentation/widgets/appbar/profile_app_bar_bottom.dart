import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/appbar_info.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/bottom_tab_bar.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/profile_app_bar_eleve_button.dart';

class ProfileAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileAppBarBottom({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Size get preferredSize => const Size(double.infinity, 132);

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeElevetedButton(),
        AppbarInfo(vm: vm),
        BottomTabBar(),
      ],
    );
  }
}
