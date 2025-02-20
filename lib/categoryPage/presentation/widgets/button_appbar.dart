import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonAppbar extends StatelessWidget {
  const ButtonAppbar({
    super.key,
    required this.image,
    required this.callback,
    required this.width,
    required this.height,
  });
  final String image;
  final VoidCallback callback;
  final double width,height;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      icon: SvgPicture.asset(
        image,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
