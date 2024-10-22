import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repository/auth/auth_Repo_imp.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repositary/auth/auth_repo.dart';
import 'package:spotify_clone/domain/useCases/auth/signInUsecase.dart';
import 'package:spotify_clone/domain/useCases/auth/signUpUsecase.dart';

final sl = GetIt.instance;
Future<void> initializeDepedency() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepo>(AuthRepoImp());

  sl.registerSingleton<Signupusecase>(Signupusecase());

  sl.registerSingleton<SignINusecase>(SignINusecase());
}
