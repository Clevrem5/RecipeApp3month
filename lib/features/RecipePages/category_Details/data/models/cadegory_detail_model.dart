class CategoryDetailModel {
  final int id, categoryId;
  final String title, description, photo;
  final num rating, timeRequired;

  CategoryDetailModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required this.rating,
  });

  factory CategoryDetailModel.fromJson(Map<String, dynamic> json) {
    return CategoryDetailModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json['description'],
      photo: json['photo'],
      timeRequired: json['timeRequired'],
      rating: json['rating'],
    );
  }
}

/*[
{
"id": 2,
"categoryId": 1,
"title": "Spanish Paella",
"description": "Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.",
"photo": "http://localhost:8888/uploads/recipes/seafood/spanish_paella.png",
"timeRequired": 20,
"rating": 4.6
},
{
"id": 11,
"categoryId": 2,
"title": "Oatmeal and Nut",
"description": "Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.",
"photo": "http://localhost:8888/uploads/recipes/breakfast/oatmeal_and_nut.png",
"timeRequired": 40,
"rating": 3.9
},*/
