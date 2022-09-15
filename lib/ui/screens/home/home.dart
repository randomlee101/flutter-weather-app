import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logic/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_app/model/forecast/forecast.dart';
import 'package:weather_app/service_locator.dart';
import 'package:weather_app/ui/components/components.dart';

///Stateless Widget Returning The Home Page of The Application
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final WeatherForecastBLoC _weatherForecastBLoC =
      locator.get<WeatherForecastBLoC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height / 1.75),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 32),
                child: StreamBuilder<List<Forecast>>(
                    stream: _weatherForecastBLoC.forecast,
                    builder: (context, snapshot) {
                      while (!snapshot.hasData) {
                        return const SizedBox();
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Weather Now",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          WeatherNow(),
                          Text(
                            "Prediction",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          ...List.generate(
                              7,
                              (index) => Prediction(
                                    forecast: snapshot.data?[index],
                                  ))
                        ],
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
