import 'package:flutter/material.dart';

import '../../data/models/ProfileBodyModel.dart';
import '../../data/models/profile_models.dart';
import '../../data/repositories/profile_repositories.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel({required RecipeProfileRepository repo}) : _profileRepo = repo {
    load();
  }

  final RecipeProfileRepository _profileRepo;

  ProfileAppbarModel? myProfile;
  List<ProfileBodyModel>? recipes;

  Future<void> load() async {
    myProfile = await _profileRepo.fetchMyProfile();
    recipes = await _profileRepo.fetchProfileRecipe() ?? [];
    notifyListeners();
  }
}

// List<CategoryRepository> category=[];
// CategoryModel? mainCategory;

// Shuni tekshirish kerak
// var allCategories = await _profileRepo.fetchCategories();
// mainCategory = allCategories.where((category) => category.main).firstOrNull;
// category = allCategories
//     .where((category) => category.id != mainCategory?.id)
//     .cast<CategoryRepository>()
//     .toList();
