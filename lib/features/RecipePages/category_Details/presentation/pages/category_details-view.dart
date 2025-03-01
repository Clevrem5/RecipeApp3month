import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/features/RecipePages/categoryPage/presentation/widgets/category_page_app_bar.dart';
import 'package:recipe2/features/RecipePages/categoryPage/presentation/widgets/category_page_nav.dart';
import 'package:recipe2/features/RecipePages/category_Details/presentation/manager/category_deils_view-Model.dart';

class CategoryDetailsPage extends StatelessWidget {
  const CategoryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CategoryDetailViewModel>();
    if (vm.isLoading) {
      return Center(child: CircularProgressIndicator(),);
    } else {
      return Scaffold(
        extendBody: true,
        appBar: CategoryPageAppBar(),
        body: Column(children: [Image(image: NetworkImage(vm.))],),
        bottomNavigationBar: RecipeBottomNav(),);
    }
  }
}
