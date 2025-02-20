import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/core/colors/colors.dart';

class BottomNavProfile extends StatefulWidget {
  const BottomNavProfile({super.key});

  @override
  _BottomNavProfileState createState() => _BottomNavProfileState();
}

class _BottomNavProfileState extends State<BottomNavProfile> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:35 ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(33),
          child: SizedBox(
            width: 281,
            height: 56,
            child: NavigationBar(
              indicatorColor: RecipeColors.textSmallColor,
              selectedIndex: _selectedIndex,
              elevation: 2,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              backgroundColor: RecipeColors.textSmallColor,
              height: 56,
              labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
              destinations: [
                NavigationDestination(
                  icon: SizedBox(
                    height: 22,
                    width: 25.15,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/home.svg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  selectedIcon: SizedBox(
                    width: 22,
                    height: 25.15,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/home.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: SizedBox(
                    height: 22,
                    width: 25.15,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/community.svg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  selectedIcon: SizedBox(
                    width: 22,
                    height: 25.15,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/community.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  label: 'Community',
                ),
                NavigationDestination(
                  icon: SizedBox(
                    height: 25,
                    width: 23,
                    child: Center(
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/svg/categories.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  selectedIcon: SizedBox(
                    width: 22,
                    height: 25.15,
                    child: SvgPicture.asset(
                      "assets/svg/categories.svg",
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  label: 'Categories',
                ),
                NavigationDestination(
                  icon: SizedBox(
                    height: 25,
                    width: 23,
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg/profile.svg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  selectedIcon: SizedBox(
                    width: 22,
                    height: 25.15,
                    child: SvgPicture.asset(
                      "assets/svg/profile.svg",
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
