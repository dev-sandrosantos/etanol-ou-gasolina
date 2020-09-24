import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_loading.dart';

// ignore: must_be_immutable
class SuccessWidget extends StatelessWidget {
  var result = "";
  Function toClean;

  SuccessWidget({
    @required this.result,
    @required this.toClean,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(result,
              style: GoogleFonts.oswald(fontSize: 22),
              textAlign: TextAlign.center),
          SizedBox(height: 20),
          LoadingButton(
            busy: false,
            func: toClean,
            text: "Novo Calculo",
            invert: true,
          )
        ],
      ),
    );
  }
}
