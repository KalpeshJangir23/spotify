import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/data/models/auth/create_user.dart';
import 'package:spotify_clone/data/models/auth/signInUserReq.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUser createUser);
  Future<Either> signIn(Signinuserreq signIn);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signIn(Signinuserreq signIn) async {
    try {
      var data = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signIn.email, password: signIn.password);

      // FirebaseFirestore.instance.collection('Users').doc(data.user?.uid).set({
      //   'name': createUserReq.fullName,
      //   'email': data.user?.email,
      // });

      return const Right('SignIn was Successful');
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'invalid-email') {
        message = 'No email found';
      } else if (e.code == 'invalid-credential') {
        message = 'wrong password';
      }

      return Left(message);
    }
  }

  @override
  Future<Either> signup(CreateUser createUserReq) async {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);

      // FirebaseFirestore.instance.collection('Users').doc(data.user?.uid).set({
      //   'name': createUserReq.fullName,
      //   'email': data.user?.email,
      // });

      return const Right('Signup was Successful');
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }

      return Left(message);
    }
  }
}
