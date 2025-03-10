import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/core/router/routes_name.dart';

import 'app_bar_container.dart';

class CategoryPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryPageAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size(double.infinity, 70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 65,
      leading: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: SizedBox(
          height: 14,
          width: 21,
          child: Center(
            child: IconButton(
              onPressed: () {
                context.go(Routes.login);
              },
              icon: SvgPicture.asset(
                "assets/svg/vector.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        "Categories",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            spacing: 5,
            children: [
              RecipeAppbarContainerButton(
                image: "assets/svg/notification.svg",
                width: 12,
                height: 17,
                callback: () {},
              ),
              RecipeAppbarContainerButton(
                image: "assets/svg/search.svg",
                width: 14,
                height: 19,
                callback: () {},
              ),

            ],
          ),
        )
      ],
    );
  }
}
