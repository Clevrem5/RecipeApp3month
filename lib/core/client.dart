import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://192.168.10.201:8888/api/v1"),
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
  }

  Future<List<Map<String, dynamic>>?> fetchProfileRecipes() async {
    var response2 = await dio.get("/recipes/list");
    if (response2.statusCode == 200) {
      List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response2.data);
      print("ma'lumot bor profile_bodyda");

      return data;
    } else {
      throw Exception("Malumot yo'q");
    }
  }


  Future<List<dynamic>> fetchCategory() async {
    var response = await dio.get("/categories/list");

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      print("ma'lumot bor Categoriesda");
      return data;
    } else {
      throw Exception("Ma'lumot yo'q category");
    }
  }

  Future<List<dynamic>>fetchOnboarding()async{
    var response=await dio.get("/onboarding/list");
    if (response.statusCode==200){
      List<dynamic>data = List<dynamic>.from(response.data);
      return data;
    }else{
      throw Exception("Onboarding kelmadi");
    }
  }

}
