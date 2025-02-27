import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routes_name.dart';

class OnboardingAppbar extends StatelessWidget implements PreferredSizeWidget{
  const OnboardingAppbar({
    super.key,
  });
  @override
  Size get preferredSize => Size(double.infinity, 70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: SizedBox(
          width: 22,
          height: 17,
          child: IconButton(
            onPressed: () {
              context.go(Routes.onboarding );

            },
            padding: EdgeInsets.zero,
            splashRadius: 1,
            icon: SvgPicture.asset(
              "assets/svg/vector.svg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
