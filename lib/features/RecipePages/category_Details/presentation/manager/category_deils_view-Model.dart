import 'package:flutter/material.dart';
import 'package:recipe2/features/RecipePages/categoryPage/data/models/category_model.dart';
import 'package:recipe2/features/RecipePages/category_Details/data/models/cadegory_detail_model.dart';

import '../../../categoryPage/data/repository/category_repo.dart';
import '../../data/repositories/category_detail_repository.dart';

class CategoryDetailViewModel with ChangeNotifier {
  CategoryDetailViewModel({
    required CategoryRepository catRepo,
    required RecipeRepository recipeRepo,
    required CategoryModel selected,
  })  : _catRepo = catRepo,
        _recipeRepo = recipeRepo,
        _selected = selected;
  final CategoryRepository _catRepo;
  final RecipeRepository _recipeRepo;

  List<CategoryModel> categories = [];
  List<CategoryDetailModel> recipes = [];

  bool right = true;

  bool isLoading = true;

  late CategoryModel _selected;

  CategoryModel get selected => _selected;

  set selected(CategoryModel model) {
    if (categories.indexOf(_selected) < categories.indexOf(model)) {
      right = true;
    } else {
      right = false;
    }
    notifyListeners();

    _selected = model;
    notifyListeners();
    fetchRecipesByCategory(_selected.id);
  }

  Future<void> fetchRecipesByCategory(int categoryId) async {
    recipes = await _recipeRepo.fetchCategoryById(categoryId);
    notifyListeners();
  }

  Future<void> load() async {
    isLoading = true;
    notifyListeners();
    categories = await _catRepo.fetchCategories();
    recipes = await _recipeRepo.fetchCategoryById(selected.id);
    isLoading = false;
    notifyListeners();
  }
}

