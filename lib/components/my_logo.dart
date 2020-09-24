import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.local_gas_station,
          color: Colors.amber,
          size: 80,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "Gasoina ou Etanol",
          textAlign: TextAlign.center,
          style: GoogleFonts.oswald(fontSize: 28, color: Colors.amber),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
