import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/bloc_observer/app_bloc_observer.dart';
import 'config/routes/routes.gr.dart';
import 'features/splash/application/main_bloc.dart';
import 'features/splash/data/main_repository.dart';
import 'translations/codegen_loader.g.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await EasyLocalization.ensureInitialized();
        BlocOverrides.runZoned(
          () => runApp(
            EasyLocalization(
              supportedLocales: const [Locale('ru', 'RU')],
              path: 'assets/translations',
              fallbackLocale: const Locale('ru'),
              useFallbackTranslations: true,
              startLocale: const Locale('ru'),
              assetLoader: const CodegenLoader(),
              child: AppWidget(),
            ),
          ),
          blocObserver: AppBlocObserver.instance(),
          eventTransformer: bloc_concurrency.sequential<Object?>(),
        );
      },
      (error, stackTrace) {},
    );

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = Router();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(
          create: (context) => MainBloc(mainRepository: MainRepository()),
        ),

        // BlocProvider<AtmradarBloc>(
        //   create: (context) => AtmradarBloc(
        //     atmRadarRepository: AtmRadarRepository(),
        //     // animalRepository: AnimalServerRepository()),
        //   )..add(const FilterPoints()),
        // )
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
