import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/dependency_injection.dart';
import '../../data/repo/home_repo_impl.dart';
import '../view_model/get_all_products_cubit/get_all_products_cubit.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Simple Store'),
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => GetAllProductsCubit(getIt<HomeRepoImpl>()),
        child: const HomeViewBody(),
      ),
    );
  }
}
