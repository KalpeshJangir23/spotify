import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/appbar/appbar.dart';
import 'package:spotify_clone/common/button/basic_app_button.dart';
import 'package:spotify_clone/common/helper/isDarkMode.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/assets/app_vector.dart';
import 'package:spotify_clone/core/config/theme/appColor.dart';
import 'package:spotify_clone/presentation/auth/pages/signIn.dart';
import 'package:spotify_clone/presentation/auth/pages/signUpPage.dart';

class RegisterSignInPage extends StatelessWidget {
  const RegisterSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVector.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVector.bottomPattern),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.authBg)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVector.logo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy Listening To Music',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Appcolor.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SignupPage()));
                              },
                              title: 'Register'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SigninPage()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: context.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
