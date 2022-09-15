import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logic/logic.dart';
import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_app/model/forecast/forecast.dart';
import 'package:weather_app/service_locator.dart';

///A persistent appbar intended to reveal the current location, date and time
class WeatherOverviewHeader extends StatelessWidget {
  WeatherOverviewHeader({Key? key}) : super(key: key);

  final WeatherForecastBLoC _weatherForecastBLoC = locator.get<WeatherForecastBLoC>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Forecast>>(
      stream: _weatherForecastBLoC.forecast,
      builder: (context, snapshot) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Weather", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),),
                Text("${dateToWords(DateTime.now().toIso8601String(), with_time: true)}", style: GoogleFonts.poppins( fontSize: 12, color: Colors.white)),
              ],
            ),
            CircleAvatar(child: Icon(Icons.more_horiz_rounded))
          ],
        );
      }
    );
  }
}
