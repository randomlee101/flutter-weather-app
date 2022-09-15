import 'package:get_it/get_it.dart';
import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';

GetIt locator = GetIt.instance;

serviceLocator()
{
  locator.registerLazySingleton(() => WeatherForecastBLoC());
}