import 'package:rxdart/rxdart.dart';
import 'package:weather_app/model/forecast/forecast.dart';

///BLoC for Acquired Weather Forecast Details
///
///Holds The Readings For The Lifecycle of The Application
class WeatherForecastBLoC
{
    final BehaviorSubject<List<Forecast>> _forecast = BehaviorSubject<List<Forecast>>();

    Stream<List<Forecast>> get forecast => _forecast.stream;

    addForecasts(List<Forecast> e) => _forecast.sink.add(e);
}