import 'package:equatable/equatable.dart';

import '../../../data/models/product_model/product_model.dart';

sealed class GetAllProductsState extends Equatable {
  const GetAllProductsState();

  @override
  List<Object> get props => [];
}

final class GetAllProductsInitial extends GetAllProductsState {}

final class GetAllProductsLoading extends GetAllProductsState {}

final class GetAllProductsSuccess extends GetAllProductsState {
  const GetAllProductsSuccess({required this.productList});

  final List<ProductModel> productList;
}

final class GetAllProductsFailure extends GetAllProductsState {
  const GetAllProductsFailure({required this.errorMessage});

  final String errorMessage;
}
