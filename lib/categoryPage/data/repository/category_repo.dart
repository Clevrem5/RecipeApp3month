import 'package:recipe2/categoryPage/data/models/category_model.dart';

import '../../../core/client.dart';

class CategoryRepository {
  CategoryRepository({required this.client});

  final ApiClient client;

  List<CategoryModel> _myCategory = [];

  Future<List<CategoryModel>> fetchCategories() async {
    if (_myCategory.isNotEmpty) return _myCategory;
    List<dynamic> rawCategory = await client.fetchCategory();
    _myCategory = rawCategory.map((e) => CategoryModel.fromJson(e)).toList();
    return _myCategory;
  }
}
