import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';

class ProfileBodyStackImage extends StatelessWidget {
  const ProfileBodyStackImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(
            image,
            width: 170 * AppSizes.wratio,
            height: 153 * AppSizes.hRatio,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 7,
          right: 8,
          child: Container(
            alignment: Alignment.center,
            width: 28 * AppSizes.wratio,
            height: 28 * AppSizes.hRatio,
            decoration: BoxDecoration(
              color: RecipeColors.textSmallColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: SvgPicture.asset(
              "assets/svg/heart (2).svg",
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              width: 16*AppSizes.wratio,
              height: 15*AppSizes.hRatio,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
