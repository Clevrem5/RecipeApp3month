import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/features/RecipePages/recipe_details/presentation/manager/recipeDetails_viewmodel.dart';

class RecipeDetailPages extends StatelessWidget {
  const RecipeDetailPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<RecipeDetailsViewModel>(context);

    if (vm.recipe == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Image(image: NetworkImage(vm.recipe!.photo));
  }

}
