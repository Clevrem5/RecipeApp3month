import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/colors.dart';

class ItemPil extends StatelessWidget {
  const ItemPil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 160,
          height: 80,
          padding: EdgeInsets.only(top: 8.5, bottom: 6, left: 15, right: 10),
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
                "Crispy Shrimp",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "A feast for the senses",
                textAlign: TextAlign.start,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                          color: RecipeColors.buttonColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
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
                      Text(
                        "30 min",
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
          child: ImageItem(),
        ),
      ],
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 170,
          height: 153,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 7, spreadRadius: 1)],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              "assets2/images/lunch.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 7,
          right: 8,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: RecipeColors.textSmallColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/svg/heart (2).svg",
                width: 16,
                height: 15,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
