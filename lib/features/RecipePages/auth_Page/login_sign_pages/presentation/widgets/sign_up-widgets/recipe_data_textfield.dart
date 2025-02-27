import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../../core/colors/colors.dart';
import '../../../../../profile/presentation/widgets/appbar/text_for.dart';
import '../../pages/SignUpviewModel.dart';

class RecipeDataTextField extends StatelessWidget {
  const RecipeDataTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var data = context.watch<SignUpViewModel>().selectedData;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFor(text: "Date of Birth", size: 15),
          GestureDetector(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                builder: (context, child) => Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.dark(
                      primary: RecipeColors.buttonColor,
                      onPrimary: Colors.white,
                      secondary: RecipeColors.iconColor,
                      onSecondary: Colors.black,
                      error: Colors.red,
                      onError: Colors.white,
                      surface: Colors.white,
                      onSurface: RecipeColors.backRoundColor,
                    ),
                  ),
                  child: child!,
                ),
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );

              if (pickedDate != null) {
                context.read<SignUpViewModel>().selectedData = pickedDate;
              }
            },
            child: Container(
              width: 357,
              height: 48,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 36),
              decoration: BoxDecoration(
                color: RecipeColors.iconColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextFor(
                text: data == null
                    ? "DD/MM/YYYY"
                    : "${data.day}/${data.month}/${data.year}",
                size: 16,
                color: RecipeColors.backRoundColor.withOpacity(data == null ? 0.5 : 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
