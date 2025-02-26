import 'package:flutter/material.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';

import '../widgets/category_page_app_bar.dart';
import '../widgets/category_page_body.dart';
import '../widgets/category_page_nav.dart';
import 'category_viewmodel.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
    required this.vm,
  });

  final CategoryViewModel vm;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) {
        if (vm.myCategory.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SafeArea(
            child: Scaffold(
              extendBody: true,
              appBar: CategoryPageAppBar(),
              body: CategoryPageBody(vm: vm),
              bottomNavigationBar: RecipeBottomNav(),
            ),
          );
        }
      },
    );
  }
}
