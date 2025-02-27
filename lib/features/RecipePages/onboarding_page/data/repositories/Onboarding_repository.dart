import 'package:recipe2/core/client.dart';
import 'package:recipe2/features/RecipePages/onboarding_page/data/models/Onboarding_model.dart';

class OnboardingRepository{
  final ApiClient client;
  OnboardingRepository({required this.client});

  List<OnboardingModel>? ads=[];

  Future<List<OnboardingModel>>fetchOnboarding()async{
    if (ads!.isNotEmpty)return ads!;
    var rawOnboarding= await client.fetchOnboarding();
    ads=rawOnboarding.map((e)=>OnboardingModel.fromJson(e)).toList();
    return ads!;

  }


}