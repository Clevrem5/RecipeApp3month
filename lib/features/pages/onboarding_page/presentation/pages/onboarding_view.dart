import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/core/router/routes_name.dart';
import 'package:recipe2/features/pages/onboarding_page/presentation/pages/onboarding_appbar.dart';
import '../../../profile/presentation/widgets/appbar/text_for.dart';
import 'onboarding_viewmodel.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key, required this.vm});

  final OnboardingViewModel vm;

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.vm,//bu joyda ovmni o'zgartrdim
      builder: (context, child) => Scaffold(
        backgroundColor: RecipeColors.backRoundColor,
        body: PageView.builder(
          controller: widget.vm.controller,
          itemCount: widget.vm.onboard.length,
          onPageChanged: (index) {
            widget.vm.updateIndex(index);
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
                        text: widget.vm.onboard[index].title,
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                      TextFor(
                        text: widget.vm.onboard[index].subtitle,
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
                            widget.vm.onboard[index].image,
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
                                widget.vm.controller!.jumpToPage(
                                    index == 0 ? index + 1 : index - 1);
                                setState(() {});
                                index==1?context.go(Routes.login):null;
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
