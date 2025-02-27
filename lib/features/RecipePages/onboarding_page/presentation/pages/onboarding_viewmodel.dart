import 'package:flutter/material.dart';

import '../../data/models/Onboarding_model.dart';
import '../../data/repositories/Onboarding_repository.dart';

class OnboardingViewModel extends ChangeNotifier{

  OnboardingViewModel({required OnboardingRepository repo}):_repository=repo{
    load();
  }
  final OnboardingRepository _repository;
  final PageController? controller=PageController();
  int currentIndex=0;

  List<OnboardingModel> onboard=[];

  void updateIndex(int index){
    currentIndex=index;
    notifyListeners();
  }

  Future<void>load()async{
    onboard=await _repository.fetchOnboarding();
    notifyListeners();
  }
}