import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usercase/useCase.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/models/auth/signInUserReq.dart';
import 'package:spotify_clone/domain/repositary/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class SignINusecase implements Usecase<Either, Signinuserreq> {
  @override
  Future<Either> call({Signinuserreq ? parmas}) {
    return sl<AuthRepo>().signIN(parmas!);
  }
}
