import 'package:carinfo/core/error/failure.dart';
import 'package:carinfo/features/login/domain/entity/login_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class ILoginRepository {
  Future<Either<Failure, LoginEntity>> login(String username, String password);

  Future<Either<Failure, bool>> isLoggedIn();

  Future<Either<Failure, void>> logout();
}
