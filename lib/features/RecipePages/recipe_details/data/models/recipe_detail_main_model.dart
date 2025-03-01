import 'package:recipe2/features/RecipePages/recipe_details/data/models/recipe_detail_ingredients_model.dart';
import 'package:recipe2/features/RecipePages/recipe_details/data/models/recipe_detail_instructions_model.dart';
import 'package:recipe2/features/RecipePages/recipe_details/data/models/recipe_detail_user_model.dart';

class RecipeDetailModels {
  RecipeDetailModels({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.videoRecipe,
    required this.timeRequired,
    required this.rating,
    required this.user,
    required this.ingredients,
    required this.instructions,
  });

  final int id, categoryId, timeRequired;
  final String title, description, photo, videoRecipe;
  final num rating;
  final UserRecipeDetailModel user;
  final List<InstructionModel> instructions;
  final List<IngredientsModel> ingredients;

  factory RecipeDetailModels.fromJson(Map<String, dynamic> json) {
    return RecipeDetailModels(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json['description'],
      photo: json['photo'],
      videoRecipe: json['videoRecipe'],
      timeRequired: json['timeRequired'],
      rating: json['rating'],
      user: UserRecipeDetailModel.fromJson(json['user']),
      ingredients: (json['ingredients'] as List<dynamic>).map((e) => IngredientsModel.fromJson(e)).toList(),
      instructions: (json['instructions'] as List<dynamic>).map((e) => InstructionModel.fromJson(e)).toList(),
    );
  }
}
