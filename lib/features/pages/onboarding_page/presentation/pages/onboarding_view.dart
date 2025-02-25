import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/features/pages/onboarding_page/presentation/pages/onboarding_appbar.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/text_for.dart';

import 'onboarding_viewmodel.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key, required this.ovm});

  final OnboardingViewModel ovm;

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.ovm,
      builder: (context, child) => Scaffold(
        backgroundColor: RecipeColors.backRoundColor,
        body: PageView.builder(
          controller: widget.ovm.controller,
          itemCount: widget.ovm.onboard.length,
          onPageChanged: (index) {
            widget.ovm.updateIndex(index);
          },
          itemBuilder: (context, index) => Scaffold(
            appBar:index==1 ?OnboardingAppbar():AppBar(toolbarHeight: 70,),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  width: double.infinity,
                  height: 66,
                  padding: EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: index==0?5:8,
                    children: [
                      TextFor(
                        text: widget.ovm.onboard[index].title,
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                      TextFor(
                        text: widget.ovm.onboard[index].subtitle,
                        size: 13,
                        weight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: [
                          Image.network(
                            widget.ovm.onboard[index].image,
                            width: double.infinity,
                            height: 720 * AppSizes.hRatio,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: 430 * AppSizes.wratio,
                            height: 284 * AppSizes.hRatio,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  RecipeColors.backRoundColor,
                                  Colors.transparent
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 80,
                            child: ElevatedButton(
                              onPressed: () {
                                widget.ovm.controller!.jumpToPage(
                                    index == 0 ? index + 1 : index - 1);
                                setState(() {});
                                index==1?context.go("/login"):null;
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(207, 45),
                                backgroundColor: RecipeColors.buttonColor,
                                elevation: 2,
                                foregroundColor: Colors.white,
                              ),
                              child:
                                  Text(index == 0 ? "Continue" : "Let's Start"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
