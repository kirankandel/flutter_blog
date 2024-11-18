import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUppWithEmailAndPassword(
      {required String email, required String password, required String name});
  Future<String> loginWithEmailAndPassword(
      {required String email, required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<String> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    throw UnimplementedError();
  }

  @override
  Future<String> signUppWithEmailAndPassword(
      {required String email, required String password, required String name}) async {
    throw UnimplementedError();
  }
}
