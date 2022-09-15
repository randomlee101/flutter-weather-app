import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logic/logic.dart';
import 'package:weather_app/model/model.dart';
import 'package:weather_app/service_locator.dart';

///Contains an overview for the current weather
class WeatherOverview extends StatelessWidget {
  WeatherOverview({Key? key}) : super(key: key);

  final WeatherForecastBLoC _weatherForecastBLoC = locator.get<WeatherForecastBLoC>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Forecast>>(
      stream: _weatherForecastBLoC.forecast,
      builder: (context, snapshot) {
        while(!snapshot.hasData) return SizedBox();
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${snapshot.data?[0].temp.toStringAsFixed(0)}\u00B0", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 96, color: Colors.white),),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("${snapshot.data?[0].weather.description}", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white)),
                ImageIcon(AssetImage("assets/weather_icons/${snapshot.data?[0].weather.icon}.png"), size: 56, color: Colors.amberAccent,)
              ],
            )
          ],
        );
      }
    );
  }
}
