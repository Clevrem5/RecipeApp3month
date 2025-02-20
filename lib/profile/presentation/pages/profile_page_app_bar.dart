import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/presentation/widgets/app_bar_container.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/profile_app_bar_bottom.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';

class ProfilePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfilePageAppBar({
    super.key,
    required this.vm,
  });
  @override
  Size get preferredSize => Size(double.infinity, 250 * AppSizes.hRatio);

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 3),
      child: AppBar(
        leadingWidth: 102 * AppSizes.wratio,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(51),
          child: Image.network(vm.myProfile!.image),
        ),
        title: SizedBox(
          width: 160 * AppSizes.wratio,
          height: 120 * AppSizes.hRatio,
          child: Column(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFor(
                text: vm.myProfile!.fullName,
                size: 15,
                color: RecipeColors.textSmallColor,
              ),
              TextFor(
                text: "@${vm.myProfile!.userName}",
                size: 10,
              ),
              TextFor(
                text: vm.myProfile!.bio,
                size: 12,
                line: true,
              ),
            ],
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                AppBarContainer(
                  image: "assets/svg/plus.svg",
                  width: 12,
                  height: 12,
                  callback: () {},
                ),
                AppBarContainer(
                  image: "assets/svg/group.svg",
                  width: 12,
                  height: 12,
                  callback: () {},
                ),
              ],
            ),
          ),
        ],
        bottom: ProfileAppBarBottom(vm: vm),
      ),
    );
  }
}
