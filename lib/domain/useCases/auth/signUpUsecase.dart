import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usercase/useCase.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/domain/repositary/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class Signupusecase implements Usecase<Either, CreateUser> {
  @override
  Future<Either> call({CreateUser? parmas}) {
    return sl<AuthRepo>().signUp(parmas!);
  }
}
