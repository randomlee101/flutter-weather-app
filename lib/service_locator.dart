import 'package:get_it/get_it.dart';
import 'package:weather_app/logic/logic.dart';

GetIt locator = GetIt.instance;

serviceLocator()
{
  locator.registerLazySingleton(() => WeatherForecastBLoC());
}