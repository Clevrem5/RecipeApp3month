import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe2/categoryPage/data/repository/category_repo.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_view.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_viewmodel.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/client.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/data/repositories/profile_repositories.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/homepage.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => CategoryPage(
        vm: CategoryViewModel(
          repo: CategoryRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfilePage(
        vm: ProfileViewModel(
          repo: ProfileAppbarRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
  ],
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          foregroundColor: RecipeColors.textSmallColor,
          backgroundColor: RecipeColors.backRoundColor,
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 102 * AppSizes.hRatio,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: RecipeColors.backRoundColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
