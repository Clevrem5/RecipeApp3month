class OnboardingModel {
  final String title, subtitle, image;
  final int id;
  final num order;

  OnboardingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.order,
  });

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['picture'],
      order: json['order'],
    );
  }
}

/*
{
"id": 1,
"title": "Get Inspired",
"subtitle": "Get inspired with our daily recipe recommendations.",
"picture": "http://localhost:8888/uploads/onboarding_pages/onboarding_1.png",
"order": 1
},
*/
