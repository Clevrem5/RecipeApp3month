import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/SignUpviewModel.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/auth-signup_view.dart';
import 'package:recipe2/features/RecipePages/auth_Page/login_sign_pages/presentation/pages/auth_login_view.dart';
import 'package:recipe2/features/RecipePages/categoryPage/data/models/category_model.dart';
import 'package:recipe2/features/RecipePages/category_Details/presentation/manager/category_deils_view-Model.dart';
import 'package:recipe2/features/RecipePages/category_Details/presentation/pages/category_details-view.dart';
import 'package:recipe2/features/RecipePages/onboarding_page/presentation/pages/onboarding_view.dart';
import 'package:recipe2/features/RecipePages/recipe_details/presentation/manager/recipeDetails_viewmodel.dart';
import 'package:recipe2/features/RecipePages/recipe_details/presentation/pages/recipeDetail-view.dart';

import '../../features/RecipePages/auth_Page/login_sign_pages/presentation/pages/auth_view_model.dart';
import '../../features/RecipePages/categoryPage/presentation/pages/category_view.dart';
import '../../features/RecipePages/categoryPage/presentation/pages/category_viewmodel.dart';
import '../../features/RecipePages/onboarding_page/presentation/pages/onboarding_viewmodel.dart';
import '../../features/RecipePages/profile/presentation/pages/profile_view_page.dart';
import '../../features/RecipePages/profile/presentation/pages/profile_viewmodel.dart';
import 'routes_name.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.categoryDetail,
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => OnboardingPage(
        vm: OnboardingViewModel(
          repo: context.read(),
        ),
      ),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginPage(
        vm: AuthViewModel(
          repo: context.read(),
        ),
      ),
    ),
    GoRoute(
      path: Routes.category,
      builder: (context, state) => CategoryPage(
        vm: CategoryViewModel(
          repo: context.read(),
        ),
      ),
    ),
    GoRoute(
      path: Routes.profile,
      builder: (context, state) => ProfilePage(
        vm: ProfileViewModel(
          repo: context.read(),
        ),
      ),
    ),
    GoRoute(
      path: Routes.signUp,
      builder: (context, state) => SignUpPage(
        vm: SignUpViewModel(repo: context.read()),
      ),
    ),
    GoRoute(
        path: Routes.recipeDetail,
        builder: (context, state) => ChangeNotifierProvider(
              create: (context) => RecipeDetailsViewModel(
                repo: context.read(),
                recipeId: int.parse(state.pathParameters['recipeId']!),
              ),
              child: RecipeDetailPages(),
            )),
    GoRoute(
      path: Routes.categoryDetail,
      builder: (context, state) => ChangeNotifierProvider(
          create: (context) => CategoryDetailViewModel(
            catRepo: context.read(),
            recipeRepo: context.read(),
            selected: state.extra as CategoryModel,
          )..load(),
          child: CategoryDetailsPage()),
    ),
  ],
);
