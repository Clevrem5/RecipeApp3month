import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';

import 'button_appbar.dart';

class RecipeBottomNav extends StatelessWidget {
  const RecipeBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 126 * AppSizes.hRatio,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [RecipeColors.backRoundColor, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35,left: 40),
            child: Container(
              width: 280,
              height: 56,
              decoration: BoxDecoration(
                color: RecipeColors.textSmallColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonAppbar(
                    image: "assets/svg/home.svg",
                    callback: () {},
                    width: 25,
                    height: 22,
                  ),
                  ButtonAppbar(
                    image: "assets/svg/community.svg",
                    callback: () {},
                    width: 25,
                    height: 22,
                  ),
                  ButtonAppbar(
                    image: "assets/svg/categories.svg",
                    callback: () {
                      context.go("/category");
                    },
                    width: 25,
                    height: 22,
                  ),
                  ButtonAppbar(
                    image: "assets/svg/profile.svg",
                    callback: () {
                      context.go("/profile");
                    },
                    width: 25,
                    height: 22,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
