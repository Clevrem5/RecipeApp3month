import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/colors/colors.dart';
import 'profile_body_stack_image.dart';

class ProfileBodyStackItems extends StatelessWidget {
  const ProfileBodyStackItems({
    super.key,
    required this.title,
    required this.bio,
    required this.image,
    required this.rating,
    required this.time,
  });

  final String title, bio, image;
  final int time;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 160,
              height: 82,
              padding: EdgeInsets.only(top: 8.5, bottom: 5, left: 15, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(14),
                ),
                border: Border.all(
                  color: RecipeColors.buttonColor,
                  width: 1.5,
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: TextStyle(
                      height: 1,
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    bio,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      height: 1,
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            rating.toString(), // ✅ Xatolik tuzatildi
                            style: TextStyle(
                              color: RecipeColors.buttonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 5), // ✅ To‘g‘ri spacing
                          SvgPicture.asset(
                            "assets/svg/star.svg",
                            fit: BoxFit.cover,
                            width: 10,
                            height: 10,
                            colorFilter: ColorFilter.mode(
                              RecipeColors.buttonColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/clock.svg",
                            fit: BoxFit.cover,
                            width: 10,
                            height: 10,
                            colorFilter: ColorFilter.mode(
                              RecipeColors.buttonColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "${time} min",
                            style: TextStyle(
                              color: RecipeColors.buttonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 73,
              left: -5,
              right: -5.5,
              child: ProfileBodyStackImage(
                image: image,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
