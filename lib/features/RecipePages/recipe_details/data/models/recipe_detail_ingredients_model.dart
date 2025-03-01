class IngredientsModel {
  IngredientsModel({
    required this.name,
    required this.order,
    required this.amount,
  });

  final int order;
  final String name, amount;

  factory IngredientsModel.fromJson(Map<String, dynamic> json) {
    return IngredientsModel(
      name: json['name'],
      order: json['order'],
      amount: json['amount'],
    );
  }
}
