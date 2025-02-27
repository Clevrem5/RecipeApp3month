import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/core/router/routes_name.dart';

import 'svg_button-appbar_category.dart';

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
                  SvgButtonWidget(
                    image: "assets/svg/home.svg",
                    callback: () {
                      context.go(Routes.onboarding);
                    },
                    width: 25,
                    height: 22,
                  ),
                  SvgButtonWidget(
                    image: "assets/svg/community.svg",
                    callback: () {
                      context.go(Routes.login);
                    },
                    width: 25,
                    height: 22,
                  ),
                  SvgButtonWidget(
                    image: "assets/svg/categories.svg",
                    callback: () {
                      context.go(Routes.category);
                    },
                    width: 25,
                    height: 22,
                  ),
                  SvgButtonWidget(
                    image: "assets/svg/profile.svg",
                    callback: () {
                      context.go(Routes.profile);
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
