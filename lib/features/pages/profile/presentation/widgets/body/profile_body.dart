import 'package:flutter/material.dart';
import 'package:recipe2/features/pages/profile/presentation/widgets/body/profile_body_stack_items.dart';

import '../../pages/profile_viewmodel.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => GridView.builder(
        padding: const EdgeInsets.only(
          top: 150,
          left: 36,
          right: 36,
          bottom: 120,
        ),
        clipBehavior: Clip.none,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 27,
          mainAxisExtent: 226,
        ),
        itemCount: vm.recipes!.length,
        itemBuilder: (context, index) => ProfileBodyStackItems(
          title: vm.recipes![index].title,
          bio: vm.recipes![index].description,
          image: vm.recipes![index].image,
          rating: vm.recipes![index].rating,
          time: vm.recipes![index].timeRequired,
        ),
      ),
    );
  }
}
