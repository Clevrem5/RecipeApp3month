
import '../../../../../core/client.dart';
import '../models/category_model.dart';

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
