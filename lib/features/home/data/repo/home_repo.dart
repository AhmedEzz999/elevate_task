import 'package:dartz/dartz.dart';

import '../../../../core/errors/service_failures.dart';
import '../models/product_model/product_model.dart';

abstract interface class HomeRepo {
  Future<Either<ServiceFailures, List<ProductModel>>> fetchProducts();
}
