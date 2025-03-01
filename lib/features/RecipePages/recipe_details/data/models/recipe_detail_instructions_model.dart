class InstructionModel {
  InstructionModel({
    required this.text,
    required this.order,
  });

  final String text;
  final int order;

  factory InstructionModel.fromJson(Map<String, dynamic> json) {
    return InstructionModel(
      text: json['text'],
      order: json['order'],
    );
  }
}
