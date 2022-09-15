import 'package:flutter/material.dart';
import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_app/model/model.dart';
import 'package:weather_app/service_locator.dart';
import 'package:weather_app/ui/components/forecast/weather_now_card.dart';

class WeatherNow extends StatelessWidget {
  WeatherNow({Key? key}) : super(key: key);

  final WeatherForecastBLoC _weatherForecastBLoC = locator.get<WeatherForecastBLoC>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Forecast>>(
        stream: _weatherForecastBLoC.forecast,
        builder: (context, snapshot) {
          while (!snapshot.hasData) return SizedBox();
          return GridView.count(
            padding: EdgeInsets.symmetric(vertical: 25),
            childAspectRatio: 16 / 5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            children: [
              WeatherNowCard(icon: Icons.thermostat_outlined,label: "Temperature",value: "${snapshot.data?[0].temp}\u00B0",),
              WeatherNowCard(icon: Icons.speed,label: "Wind",value: "${snapshot.data?[0].wind_spd}km/hr",),
              WeatherNowCard(icon: Icons.cloud,label: "Precipitation",value: "${snapshot.data?[0].precip.toStringAsFixed(1)}%",),
              WeatherNowCard(icon: Icons.water_drop,label: "Humidity",value: "${snapshot.data?[0].clouds.toStringAsFixed(0)}%",),
            ],
          );
        });
  }
}
