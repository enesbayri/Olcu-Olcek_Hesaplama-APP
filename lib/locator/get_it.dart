import 'package:flutter_application_11/database/HiveStorage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void locatorSetup() {
  locator.registerSingleton<HiveStorage>(HiveStorage());


}