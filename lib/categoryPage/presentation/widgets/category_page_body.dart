import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_viewmodel.dart';
import 'package:recipe2/categoryPage/presentation/widgets/category_item.dart';
import 'package:recipe2/core/Sizes.dart';

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
        left: 30,
        top: 20,
        right: 30,
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
