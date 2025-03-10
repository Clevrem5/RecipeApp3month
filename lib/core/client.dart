import 'package:dio/dio.dart';

import '../features/RecipePages/auth_Page/login_sign_pages/data/models/signupModel.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://192.168.10.249:8888/api/v1",validateStatus: (status) => true,),
  );

  Future<Map<String, dynamic>> fetchMyProfile() async {
    var response = await dio.get("/auth/details/1");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      print("ma'lumot bor profile_appbarda");
      return data;
    } else {
      throw Exception("Ma'lumot yo'q");
    }
  } //profileAppbar

  Future<List<Map<String, dynamic>>?> fetchProfileRecipes() async {
    var response2 = await dio.get("/recipes/list");
    if (response2.statusCode == 200) {
      List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response2.data);
      print("ma'lumot bor profile_bodyda");

      return data;
    } else {
      throw Exception("Malumot yo'q");
    }
  } //profileBody

  Future<List<dynamic>> fetchCategory() async {
    var response = await dio.get("/categories/list");

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      print("ma'lumot bor Categoriesda");
      return data;
    } else {
      throw Exception("Ma'lumot yo'q category");
    }
  } //Category

  Future<List<dynamic>>fetchOnboarding()async{
    var response=await dio.get("/onboarding/list");
    if (response.statusCode==200){
      List<dynamic>data = List<dynamic>.from(response.data);
      return data;
    }else{
      throw Exception("Onboarding kelmadi");
    }
  } //onboarding

  Future<String> login(String login, String password) async {
    var response = await dio.post(
      "/auth/login",
      data: {"login": login, 'password': password},
    );
    if (response.statusCode==200){
      var data = Map<String,String>.from(response.data);
      return data['accessToken']!;
    }else{
      throw Exception("Login xato");
    }
  } //login

  Future<bool> signUp(UserModel model) async {

    var response = await dio.post(
      '/auth/register',
      data: model.toJson(),

    );
    print("malumot bor ${response.data}");
    return response.statusCode == 201 ? true :false;
  } //signUp

  Future<dynamic> fetchRecipeDetails(int recipeId) async {
    var response = await dio.get('/recipe/detail/$recipeId');
    return response.data;
  }

  Future <List<dynamic>>fetchCategoryById(int categoryId)async{
    var response= await dio.get('/recipe/list?Category=$categoryId');
   return response.statusCode==200 ? response.data:Exception("Xato bor javob kelmadi Apidan");
  }
}

