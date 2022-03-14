import 'package:auto_route/annotations.dart';
import 'package:longevity_app/features/splash/presentation/get_started.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute<dynamic>(page: GetStarted, initial: true),
])
class $Router {}
