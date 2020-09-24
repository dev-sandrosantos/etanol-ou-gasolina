import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'button_loading.dart';

// ignore: must_be_immutable
class SuccessWidget extends StatelessWidget {
  Text result1;
  Text result2;
  Icon iconResult;
  Function toClean;

  SuccessWidget({
    @required this.result1,
    @required this.result2,
    @required this.toClean,
    @required this.iconResult,
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
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              result1,
              result2,
            ],
          ),
          SizedBox(height: 20),
          LoadingButton(
            busy: false,
            func: toClean,
            text: "Novo Calculo",
            invert: true,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
