import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';

import 'onboarding_viewmodel.dart';

class OnboardingAppbar extends StatelessWidget implements PreferredSizeWidget{
  const OnboardingAppbar({
    super.key,
  });
  @override
  // TODO: implement preferredSize
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
