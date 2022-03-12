import 'package:auto_route/annotations.dart';
import 'package:longevity_app/features/splash/presentation/main_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute<dynamic>(page: MainPage, initial: true),
])
class $Router {}
