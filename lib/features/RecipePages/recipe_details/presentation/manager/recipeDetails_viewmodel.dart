import 'package:flutter/material.dart';
import 'package:recipe2/features/RecipePages/recipe_details/data/models/recipe_detail_main_model.dart';
import 'package:recipe2/features/RecipePages/recipe_details/data/repositories/recipe_details_repository.dart';

class RecipeDetailsViewModel extends ChangeNotifier {
  RecipeDetailsViewModel({
    required RecipeDetailsRepository repo,
    required this.recipeId,
  }) : _repo = repo{
    load();
  }


  final RecipeDetailsRepository _repo;
  bool isLoading = true;
  final int recipeId;

   RecipeDetailModels? recipe;

  Future<void>load()async{
    isLoading=true;
    notifyListeners();
    recipe=await _repo.fetchRecipeById(recipeId);
    isLoading=false;
    notifyListeners();
  }
}
