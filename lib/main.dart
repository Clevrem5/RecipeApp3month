import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:recipe2/core/appSizes/Sizes.dart';
import 'package:recipe2/core/client.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/core/router/go_router_Pages.dart';
import 'package:recipe2/features/pages/auth_Page/login_page/data/repositories/auth_repository.dart';
import 'package:recipe2/features/pages/categoryPage/data/repository/category_repo.dart';
import 'package:recipe2/features/pages/onboarding_page/data/repositories/Onboarding_repository.dart';
import 'package:recipe2/features/pages/profile/data/repositories/profile_repositories.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ApiClient(),
        ),
        Provider(
          create: (context) => AuthRepository(
            client: context.read(),
          ),
        ),
        Provider(
          create: (context) => CategoryRepository(
            client: context.read(),
          ),
        ),
        Provider(
          create: (context) => OnboardingRepository(
            client: context.read(),
          ),
        ),
        Provider(
          create: (context) => RecipeProfileRepository(
            client: context.read(),
          ),
        ),
      ],
      builder: (context, child) => MaterialApp.router(
        routerConfig: router,
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
