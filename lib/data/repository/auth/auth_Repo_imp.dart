import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/models/auth/signInUserReq.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repositary/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<Either> signIN(Signinuserreq signIN) async {
    return await sl<AuthFirebaseService>().signIn(signIN);
  }

  @override
  Future<Either> signUp(CreateUser createuser) async {
    return await sl<AuthFirebaseService>().signup(createuser);
  }
}
