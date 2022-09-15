import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherNowCard extends StatelessWidget {
  const WeatherNowCard({Key? key, this.label, this.value, this.icon}) : super(key: key);

  final String? label;
  final String? value;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.grey.shade800,
          child: Icon(icon),
        ),
        SizedBox(width: 15,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${label}"),
            Text("${value}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
          ],
        )
      ],
    );
  }
}
