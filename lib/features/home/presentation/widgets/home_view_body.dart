import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_error_widget.dart';
import '../view_model/get_all_products_cubit/get_all_products_cubit.dart';
import '../view_model/get_all_products_cubit/get_all_products_state.dart';
import 'products_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<GetAllProductsCubit>().getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
      builder: (context, state) {
        if (state is GetAllProductsSuccess) {
          return ProductsListView(productList: state.productList);
        } else if (state is GetAllProductsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
