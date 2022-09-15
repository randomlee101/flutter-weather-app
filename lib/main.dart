import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logic/weather_forecast/weather_forecast_logic.dart';
import 'package:weather_app/service_locator.dart';
import 'package:weather_app/ui/screens/home/home.dart';

///Entry-point for the application
void main()
{
  //initialization of all registered bloc classes available in the serviceLocator method
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      WeatherForecastRequest weatherForecastRequest = WeatherForecastRequest();
      weatherForecastRequest.fetchDailyWeatherInfo();
    });
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.macondoTextTheme(ThemeData.light().textTheme)
      )
    );
  }
}
