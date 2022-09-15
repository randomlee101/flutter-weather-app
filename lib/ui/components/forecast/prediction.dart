import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logic/logic.dart';
import 'package:weather_app/model/forecast/forecast.dart';

///Re-usable component for showing summarized weather information for subsequent days in a 7-days span of forecast
class Prediction extends StatelessWidget {
  const Prediction({Key? key, this.forecast}) : super(key: key);

  final Forecast? forecast;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 3,child: Text("${dateToWords(forecast!.datetime.toString())}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey.shade800))),
          Expanded(flex: 2,child: Text("${forecast?.temp}\u00B0", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18))),
          Expanded(flex: 4,child: Text("${forecast?.weather.description}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey.shade800))),
        ],
      )
    );
  }
}
