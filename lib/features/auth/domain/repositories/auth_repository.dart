import 'package:dartz/dartz.dart';
import 'package:flutter_graphql_sample/core/base/repository.dart';
import 'package:flutter_graphql_sample/core/error/failures.dart';
import 'package:flutter_graphql_sample/features/auth/domain/models/login_model.dart';
import 'package:flutter_graphql_sample/features/auth/domain/models/register_model.dart';
import 'package:flutter_graphql_sample/core/auth/models/user_auth_model.dart';

abstract class AuthRepository extends Repository {
  Future<Either<UserAuthModel, Failure>> login(LoginModel loginModel);
  Future<Either<UserAuthModel, Failure>> register(RegisterModel registerModel);
}
