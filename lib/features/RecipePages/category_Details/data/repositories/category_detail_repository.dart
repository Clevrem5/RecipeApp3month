import 'package:recipe2/core/client.dart';
import 'package:recipe2/features/RecipePages/category_Details/data/models/cadegory_detail_model.dart';

class RecipeRepository{

  final ApiClient client;
  RecipeRepository({required this.client});

  CategoryDetailModel? details;
  Map<int ,List<CategoryDetailModel>>categoryDetails={};

  Future<List<CategoryDetailModel>>fetchCategoryById(int categoryId)async{
    if (categoryDetails.containsKey(categoryId)&& categoryDetails[categoryId] !=null){
      return categoryDetails[categoryId]!;
    }

    var rawDetails=await client.fetchCategoryById(categoryId);
    final recipes=rawDetails.map((e)=>CategoryDetailModel.fromJson(e)).toList();
    categoryDetails[categoryId]=recipes;
    return recipes;


  }


}