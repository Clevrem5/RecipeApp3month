import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';

import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    this.main = false,
    this.width = 159,
    this.height = 140,
  });

  final CategoryModel category;
  final double width, height;
  final bool main;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    Widget image = Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image(
          image: CachedNetworkImageProvider(category.image),
          width: width * AppSizes.wratio,
          height: height * AppSizes.hRatio,
          fit: BoxFit.cover,
        ),
      ),
    );

    Widget title = Text(category.title);

    return GestureDetector(
      onTap: () {},
      child: Column(
        // Bu qator `Column` ni ortiqcha kengayishdan saqlaydi
        children: [
           main ? title: image,
          SizedBox(height: 5,),
           main ? image: title,

        ],
      ),
    );
  }
}
