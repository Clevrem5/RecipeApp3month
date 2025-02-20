import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/appbar_inform.dart';

class AppbarInfo extends StatelessWidget {
  const AppbarInfo({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356 * AppSizes.wratio,
      height: 49.57 * AppSizes.hRatio,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: RecipeColors.iconColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppbarInform(
            number: vm.myProfile!.recipeCount,
            label: "Recipes",
          ),
          Container(width: 1, height: 26, color: RecipeColors.iconColor),
          AppbarInform(
            number: vm.myProfile!.followingCount,
            label: "Following",
          ),
          Container(width: 1, height: 26, color: RecipeColors.iconColor),
          AppbarInform(
            number: vm.myProfile!.followerCount,
            label: "Followers",
          ),
        ],
      ),
    );
  }
}
