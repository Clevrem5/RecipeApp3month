import 'package:recipe2/core/client.dart';
import 'package:recipe2/profile/data/models/ProfileBodyModel.dart';
import 'package:recipe2/profile/data/models/profile_models.dart';

class RecipeProfileRepository {
  RecipeProfileRepository({required this.client});

  final ApiClient client;

  ProfileAppbarModel? myProfile;
  List<ProfileBodyModel> myRecipe = [];

  Future<ProfileAppbarModel?> fetchMyProfile() async {
    if (myProfile != null) return myProfile;
    var rawProfile = await client.fetchMyProfile();
    myProfile = ProfileAppbarModel.fromJson(rawProfile);
    return myProfile;
  }
  // var rawRecipes = await client.fetchProfileRecipes();
  // _myRecipe = rawRecipes!.map((json) => ProfileBodyModel.fromJson(json)).toList();
  // print("ma'lumot body keldi ${_myRecipe}");
  Future<List<ProfileBodyModel>> fetchProfileRecipe() async {
    if (myRecipe.isNotEmpty) return myRecipe;
    var rawRecipe=await client.fetchProfileRecipes();
    myRecipe=rawRecipe!.map((e)=> ProfileBodyModel.fromJson(e)).toList();
    return myRecipe;
  }
}
