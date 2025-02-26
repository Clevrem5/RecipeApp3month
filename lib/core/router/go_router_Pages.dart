import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/pages/auth_login_view.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/pages/auth_view_model.dart';
import 'package:recipe2/features/pages/categoryPage/presentation/pages/category_view.dart';
import 'package:recipe2/features/pages/onboarding_page/presentation/pages/onboarding_view.dart';
import 'package:recipe2/features/pages/profile/presentation/pages/profile_view_page.dart';
import 'package:recipe2/features/pages/profile/presentation/pages/profile_viewmodel.dart';

import '../../../features/pages/categoryPage/presentation/pages/category_viewmodel.dart';
import '../../../features/pages/onboarding_page/presentation/pages/onboarding_viewmodel.dart';
import 'routes_name.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.category,
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
  ],
);
