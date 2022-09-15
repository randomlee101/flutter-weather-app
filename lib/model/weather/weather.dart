import 'package:freezed_annotation/freezed_annotation.dart';

//part keyword denotes the files to be generated with the build_runner package
part 'weather.freezed.dart';
part 'weather.g.dart';

///Generation of Immutable Weather Class with a fromJson method using freezed
@Freezed()
class Weather with _$Weather
{
  factory Weather(String icon, int code, String description) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$_Weather.fromJson(json);
}
