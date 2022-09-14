// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      json['moonrise_ts'] as int,
      json['wind_cdir'] as String,
      json['rh'] as int,
      (json['pres'] as num).toDouble(),
      (json['high_temp'] as num).toDouble(),
      json['sunset_ts'] as int,
      (json['ozone'] as num).toDouble(),
      (json['moon_phase'] as num).toDouble(),
      (json['wind_gust_spd'] as num).toDouble(),
      json['snow_depth'] as int,
      json['clouds'] as int,
      json['ts'] as int,
      json['sunrise_ts'] as int,
      (json['app_min_temp'] as num).toDouble(),
      (json['wind_spd'] as num).toDouble(),
      json['pop'] as int,
      json['wind_cdir_full'] as String,
      (json['moon_phase_lunation'] as num).toDouble(),
      (json['slp'] as num).toDouble(),
      (json['app_max_temp'] as num).toDouble(),
      json['valid_date'] as String,
      (json['vis'] as num).toDouble(),
      json['snow'] as int,
      (json['dewpt'] as num).toDouble(),
      (json['uv'] as num).toDouble(),
      Weather.fromJson(json['weather'] as Map<String, dynamic>),
      json['wind_dir'] as int,
      json['max_dhi'],
      json['clouds_hi'] as int,
      (json['precip'] as num).toDouble(),
      (json['low_temp'] as num).toDouble(),
      (json['max_temp'] as num).toDouble(),
      json['moonset_ts'] as int,
      json['datetime'] as String,
      (json['temp'] as num).toDouble(),
      (json['min_temp'] as num).toDouble(),
      json['clouds_mid'] as int,
      json['clouds_low'] as int,
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'moonrise_ts': instance.moonrise_ts,
      'wind_cdir': instance.wind_cdir,
      'rh': instance.rh,
      'pres': instance.pres,
      'high_temp': instance.high_temp,
      'sunset_ts': instance.sunset_ts,
      'ozone': instance.ozone,
      'moon_phase': instance.moon_phase,
      'wind_gust_spd': instance.wind_gust_spd,
      'snow_depth': instance.snow_depth,
      'clouds': instance.clouds,
      'ts': instance.ts,
      'sunrise_ts': instance.sunrise_ts,
      'app_min_temp': instance.app_min_temp,
      'wind_spd': instance.wind_spd,
      'pop': instance.pop,
      'wind_cdir_full': instance.wind_cdir_full,
      'moon_phase_lunation': instance.moon_phase_lunation,
      'slp': instance.slp,
      'app_max_temp': instance.app_max_temp,
      'valid_date': instance.valid_date,
      'vis': instance.vis,
      'snow': instance.snow,
      'dewpt': instance.dewpt,
      'uv': instance.uv,
      'weather': instance.weather,
      'wind_dir': instance.wind_dir,
      'max_dhi': instance.max_dhi,
      'clouds_hi': instance.clouds_hi,
      'precip': instance.precip,
      'low_temp': instance.low_temp,
      'max_temp': instance.max_temp,
      'moonset_ts': instance.moonset_ts,
      'datetime': instance.datetime,
      'temp': instance.temp,
      'min_temp': instance.min_temp,
      'clouds_mid': instance.clouds_mid,
      'clouds_low': instance.clouds_low,
    };
