import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_app/model/forecast/forecast.dart';
import 'package:weather_app/network/endpoints.dart';
import 'package:weather_app/network/request_methods.dart';
import 'package:weather_app/service_locator.dart';

///Request is made to the weather api to retrieve information for a [lon] & [lat]
class WeatherForecastRequest {
  fetchDailyWeatherInfo() async {
    WeatherForecastBLoC weatherForecastBLoC =
        locator.get<WeatherForecastBLoC>();
    var url = Endpoints.dailyForecast;
    var params = {"lat": 7, "lon": 3};
    var response = await get(url, params: params);
    //data is casted as List<dynamic> to access the map function
    var data = response["data"] as List<dynamic>;
    //loop through the data received from the server
    //cast the resulting iterable to Forecast
    //converting the data one after the other in the loop to a Forecast object using the Forecast.fromJson factory constructor
    //converting the resulting iterable into a list
    List<Forecast> forecast =
        data.map<Forecast>((e) => Forecast.fromJson(e)).toList();

    //adds the retrieved forecast to the exist WeatherForecastBLoC
    weatherForecastBLoC.addForecasts(forecast);
  }
}
