import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/data/models/category_model.dart';
import 'package:recipe2/categoryPage/data/repository/category_repo.dart';

class CategoryViewModel extends ChangeNotifier {
  CategoryViewModel({required CategoryRepository repo}) : _repo = repo {
    load();
  }

  final CategoryRepository _repo;

  List<CategoryModel> myCategory = [];
  CategoryModel? mainCategory;

  Future<void> load() async {
    try {
      var allCategories = await _repo.fetchCategories();
      mainCategory = allCategories.where((category) => category.main).firstOrNull;
      myCategory = allCategories.where((category) => category.id != mainCategory?.id).toList();
    } finally {
      notifyListeners();
    }
  }
}
