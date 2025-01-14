import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify_clone/core/config/theme/appTheme.dart';
import 'package:spotify_clone/firebase_options.dart';
import 'package:spotify_clone/presentation/choose_mode/cubit/theme_cubit.dart';
import 'package:spotify_clone/presentation/splash/pages/splash.dart';
import 'package:spotify_clone/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDepedency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, mode) {
          return MaterialApp(
              showSemanticsDebugger: false,
              themeMode: mode,
              darkTheme: AppTheme.darkTheme,
              theme: AppTheme.lightTheme,
              home: const SplashScreen());
        },
      ),
    );
  }
}
