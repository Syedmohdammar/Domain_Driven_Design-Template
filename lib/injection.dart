import 'package:injectable/injectable.dart';
import 'injection.config.dart';
// ignore: unused_import
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
