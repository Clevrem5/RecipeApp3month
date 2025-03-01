import 'package:recipe2/core/client.dart';
import 'package:recipe2/features/RecipePages/recipe_details/data/models/recipe_detail_main_model.dart';

class RecipeDetailsRepository {
  RecipeDetailsRepository({required this.client});

  final ApiClient client;

  RecipeDetailModels? recipe;

  Future<RecipeDetailModels> fetchRecipeById(int recipeId) async {
    final rawRecipe = await client.fetchRecipeDetails(recipeId);
    // JSON dan obyektga o‘girish
    recipe = RecipeDetailModels.fromJson(rawRecipe);
    return recipe!;
  }
}
