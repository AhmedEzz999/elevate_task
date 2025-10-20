import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';
import 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.homeRepo) : super(GetAllProductsInitial());
  final HomeRepo homeRepo;

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoading());
    final result = await homeRepo.fetchProducts();
    result.fold(
      (serviceFailures) {
        emit(GetAllProductsFailure(errorMessage: serviceFailures.errorMessage));
      },
      (productList) {
        emit(GetAllProductsSuccess(productList: productList));
      },
    );
  }
}
