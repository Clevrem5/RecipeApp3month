class ProfileBodyModel {
  ProfileBodyModel({
    required this.id,
    required this.image,
    required this.title,
    required this.timeRequired,
    required this.categoryId,
    required this.description,
    required this.rating,
  });

  final int id, timeRequired, categoryId;
  final String title, image, description;
  final num rating;

  factory ProfileBodyModel.fromJson(Map<String, dynamic> json) {
    return ProfileBodyModel(
      id: json['id'],
      image: json['photo'],
      title: json['title'],
      timeRequired: json['timeRequired'],
      categoryId: json['categoryId'],
      description: json['description'],
      rating: json['rating'],
    );
  }
}



// {
// "id": 2,
// "categoryId": 1,
// "title": "Spanish Paella",
// "description": "Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.",
// "photo": "http://localhost:8888/uploads/recipes/seafood/spanish_paella.png",
// "timeRequired": 20,
// "rating": 4.6
// },
