import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/models/auth/signInUserReq.dart';

abstract class AuthRepo {
  Future<Either> signIN(Signinuserreq signIN);
  Future<Either> signUp(CreateUser createUser);
}
