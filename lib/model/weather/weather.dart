import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@Freezed()
class Weather with _$Weather
{
  factory Weather(String icon, int code, String description) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$_Weather.fromJson(json);
}
