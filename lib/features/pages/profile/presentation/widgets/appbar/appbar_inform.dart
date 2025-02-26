import 'package:flutter/material.dart';
import 'package:recipe2/features/pages/profile/presentation/widgets/appbar/text_for.dart';

class AppbarInform extends StatelessWidget {
  const AppbarInform({
    super.key,
    required this.number,
    required this.label,
  });

  final int number;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 1,
      children: [
        TextFor(
          text: number.toString(),
          size: 15,
        ),
        TextFor(
          text: label,
          size: 12,
        ),
      ],
    );
  }
}
