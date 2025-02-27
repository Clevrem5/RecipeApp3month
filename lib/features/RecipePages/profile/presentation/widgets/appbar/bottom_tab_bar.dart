import 'package:flutter/material.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/features/RecipePages/profile/presentation/widgets/appbar/text_for.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      width: 430,
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.white,
        // Tanlangan tab rangini berish
        unselectedLabelColor: Colors.white,
        // Tanlanmagan tab rangi
        indicatorColor: RecipeColors.buttonColor,
        splashBorderRadius: BorderRadius.circular(10),
        // Chiziq rangini o‘zgartirish
        tabs: const [
          TextFor(
            text: "Recipe",
            size: 12,
            weight: FontWeight.w400,
          ),
          TextFor(
            text: "Favorites",
            size: 12,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
