import 'package:flutter/material.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';

import '../pages/category_viewmodel.dart';
import '../../../../common_widgets/for_body/category_item.dart';

class CategoryPageBody extends StatelessWidget {
  const CategoryPageBody({
    super.key,
    required this.vm,
  });

  final CategoryViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 25,
        top: 20,
        right: 25,
        bottom: 150,
      ),
      children: [
        if (vm.mainCategory != null)
          CategoryItem(
            category: vm.mainCategory!,
            width: 356 * AppSizes.wratio,
            height: 148,
            main: true,
          ),
        SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 5,
            mainAxisExtent: 157,
          ),
          itemCount: vm.myCategory.length,
          itemBuilder: (context, index) => CategoryItem(
            category: vm.myCategory[index],
          ),
        ),
      ],
    );
  }
}
