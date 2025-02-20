class ProfileAppbarModel {
  final int id;
  final String userName, fullName, bio;
  final String image;
  final int recipeCount, followingCount, followerCount;

  ProfileAppbarModel({
    required this.id,
    required this.userName,
    required this.fullName,
    required this.bio,
    required this.image,
    required this.recipeCount,
    required this.followingCount,
    required this.followerCount,
  });

  factory ProfileAppbarModel.fromJson(Map<String, dynamic> json) {
    return ProfileAppbarModel(
      id: json["id"],
      userName: json["username"],
      fullName: json["fullName"],
      bio: json["presentation"],
      image: json["profilePhoto"],
      recipeCount: json["recipesCount"] ,
      followingCount: json["followingCount"],
      followerCount: json["followerCount"],
    );
  }
}
