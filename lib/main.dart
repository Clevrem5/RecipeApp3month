import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/categoryPage/data/repository/category_repo.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_view.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_viewmodel.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/client.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/data/repositories/auth_repository.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/pages/auth_login_view.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/presentation/pages/auth_view_model.dart';
import 'package:recipe2/profile/data/repositories/profile_repositories.dart';
import 'package:recipe2/profile/presentation/pages/profile_view_page.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';

import 'features/pages/onboarding_page/data/repositories/Onboarding_repository.dart';
import 'features/pages/onboarding_page/presentation/pages/onboarding_view.dart';
import 'features/pages/onboarding_page/presentation/pages/onboarding_viewmodel.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnboardingPage(
        ovm: OnboardingViewModel(
          repo: OnboardingRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/category',
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
          repo: RecipeProfileRepository(
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
    return ChangeNotifierProvider(
      create: (context) => AuthViewModel(
        repo: AuthRepository(
          client: ApiClient(),
        ),
      ),
      builder: (context, child) => MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.dark,
              primary: Colors.yellow,
              onPrimary: Colors.black,
              secondary: Colors.blue,
              onSecondary: Colors.blue,
              error: Colors.red,
              onError: Colors.white,
              surface: Colors.black,
              onSurface: Colors.white),
          fontFamily: "Poppins",
          appBarTheme: AppBarTheme(
            foregroundColor: RecipeColors.textSmallColor,
            backgroundColor: RecipeColors.backRoundColor,
            surfaceTintColor: Colors.transparent,
          ),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: RecipeColors.backRoundColor,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("uz"),
          Locale("en"),
          Locale("ru"),
        ],
        locale: Locale("ru"),
      ),
    );
  }
}
