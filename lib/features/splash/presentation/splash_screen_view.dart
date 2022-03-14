import 'package:easy_localization/easy_localization.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:google_fonts/google_fonts.dart';

import '/config/routes/routes.gr.dart';
import '../../../constant/colors.dart';
import '../../../constant/path_to_image.dart';

class SplashScreenView extends StatelessWidget {
  SplashScreenView({Key? key}) : super(key: key);

  final dynamic _appRouter = Router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EasySplashScreen(
        logo: Image.asset(pathLogo),
        loaderColor: mainColor,
        title: null,
        backgroundColor: whiteColor,
        showLoader: true,
        navigator: MaterialApp.router(
          theme: ThemeData(
            textTheme: GoogleFonts.dmSansTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
        durationInSeconds: 5,
        loadingText: Text(
          'BMI Disease Tracker',
          style: GoogleFonts.dmSans(
            textStyle: const TextStyle(color: mainColor, fontSize: 20),
          ),
        ).tr(),
      ),
    );
  }
}
