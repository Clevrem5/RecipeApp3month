import 'package:flutter/material.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';

class snakbar extends StatelessWidget {
  const snakbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
        height: 286 * AppSizes.hRatio,
        width: 250 * AppSizes.wratio,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Sign up succesful!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
