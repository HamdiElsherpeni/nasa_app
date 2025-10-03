import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/networking/api_failure.dart';
import 'package:nasa_app/futures/auth/data/models/sign_in_request_body.dart';
import 'package:nasa_app/futures/auth/data/models/sign_up_request_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> signInUser({
    SignInRequestBody signInRequestBody,
  });
  Future<Either<Failure, void>> sinUpUser({
    SignUpRequestModel signUpRequestModel,
  });
}
