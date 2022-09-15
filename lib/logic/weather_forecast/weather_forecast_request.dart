import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_app/model/forecast/forecast.dart';
import 'package:weather_app/network/endpoints.dart';
import 'package:weather_app/network/request_methods.dart';
import 'package:weather_app/service_locator.dart';

class WeatherForecastRequest {
  fetchDailyWeatherInfo() async {
    WeatherForecastBLoC weatherForecastBLoC =
        locator.get<WeatherForecastBLoC>();
    var url = Endpoints.dailyForecast;
    var params = {"lat": 7, "lon": 3};
    var response = await get(url, params: params);
    var data = response["data"] as List<dynamic>;
    List<Forecast> forecast =
        data.map<Forecast>((e) => Forecast.fromJson(e)).toList();
    print(forecast);
    weatherForecastBLoC.addForecasts(forecast);
  }
}
