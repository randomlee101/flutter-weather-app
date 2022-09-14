import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/model/weather/weather.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@Freezed()
class Forecast with _$Forecast {
  factory Forecast(
      int moonrise_ts,
      String wind_cdir,
      int rh,
      double pres,
      double high_temp,
      int sunset_ts,
      double ozone,
      double moon_phase,
      double wind_gust_spd,
      int snow_depth,
      int clouds,
      int ts,
      int sunrise_ts,
      double app_min_temp,
      double wind_spd,
      int pop,
      String wind_cdir_full,
      double moon_phase_lunation,
      double slp,
      double app_max_temp,
      String valid_date,
      double vis,
      int snow,
      double dewpt,
      double uv,
      Weather weather,
      int wind_dir,
      dynamic max_dhi,
      int clouds_hi,
      double precip,
      double low_temp,
      double max_temp,
      int moonset_ts,
      String datetime,
      double temp,
      double min_temp,
      int clouds_mid,
      int clouds_low) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$_Forecast.fromJson(json);
}
