import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/service_failures.dart';
import '../../../../core/utils/api_service.dart';
import '../models/product_model/product_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({required this.dio});
  final Dio dio;

  @override
  Future<Either<ServiceFailures, List<ProductModel>>> fetchProducts() async {
    try {
      final data = await ApiService(dio: dio).get(endpoint: 'products');
      final List<ProductModel> productList = [];
      for (final product in data) {
        productList.add(ProductModel.fromJson(product));
      }
      return right(productList);
    } catch (error) {
      if (error is DioException) {
        return left(ServiceFailures.fromDioException(error));
      }
      return left(ServiceFailures(errorMessage: error.toString()));
    }
  }
}
