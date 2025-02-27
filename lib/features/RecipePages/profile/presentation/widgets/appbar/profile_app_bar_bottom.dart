import 'package:flutter/material.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/features/RecipePages/profile/presentation/widgets/appbar/profile_app_bar_eleve_button.dart';

import '../../pages/profile_viewmodel.dart';
import 'appbar_info.dart';
import 'bottom_tab_bar.dart';

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
