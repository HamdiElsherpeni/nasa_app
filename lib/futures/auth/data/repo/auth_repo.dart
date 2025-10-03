import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/errors/exceptions.dart';

abstract class AuthRepo {
   Future<Either<ServerEception, void>> featuresinInUser({
    required String email,
    required String password,
  });
   Future<Either<ServerEception,void>>sinUpUser({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  });
}