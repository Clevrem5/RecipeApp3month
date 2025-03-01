class UserRecipeDetailModel {
  UserRecipeDetailModel({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  final int id;
  final String username, firstName, image, lastName;

  factory UserRecipeDetailModel.fromJson(Map<String, dynamic> json) {
    return UserRecipeDetailModel(
      id: json['id'],
      username: json['username'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      image: json['profilePhoto'],
    );
  }
}

/*
 {
  "id": 0,
  "categoryId": 0,
  "title": "string",
  "description": "string",
  "photo": "string",
  "videoRecipe": "string",
  "timeRequired": 0,
  "rating": 0,
  "user": {
    "id": 0,
    "profilePhoto": "string",
    "username": "string",
    "firstName": "string",
    "lastName": "string"
  },
  "instructions": [
    {
      "text": "string",
      "order": 0
    }
  ],
  "ingredients": [
    {
      "amount": "string",
      "name": "string",
      "order": 0
    }
  ]
}*/
