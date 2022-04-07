import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/bloc_observer/app_bloc_observer.dart';

import 'features/push_list/data/repositories/main_repository.dart';
import 'features/push_list/presentation/bloc/main_bloc.dart';
import 'features/push_list/presentation/pages/push_list.dart';
import 'translations/codegen_loader.g.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await EasyLocalization.ensureInitialized();
        BlocOverrides.runZoned(
          () => runApp(
            EasyLocalization(
              supportedLocales: const [Locale('ru'), Locale('en')],
              path: 'assets/translations',
              fallbackLocale: const Locale('en', 'US'),
              useFallbackTranslations: true,
              startLocale: const Locale('en', 'US'),
              assetLoader: const CodegenLoader(),
              child: const AppWidget(),
            ),
          ),
          blocObserver: AppBlocObserver.instance(),
          eventTransformer: bloc_concurrency.sequential<Object?>(),
        );
      },
      (error, stackTrace) {},
    );

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<MainBloc>(
            create: (context) => MainBloc(mainRepository: MainRepository()),
          ),
        ],
        child: const PushList(),
      ),
    );
  }
}
