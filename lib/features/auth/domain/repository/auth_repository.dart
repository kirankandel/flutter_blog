import 'package:blog/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signInWithEmailAndPassword(
      {required String email, required String password, required String name});
  Future<Either<Failure, String>> loginWithEmailAndPassword(
      {required String email, required String password});
}
