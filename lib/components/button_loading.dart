import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

// ignore: must_be_immutable
class LoadingButton extends StatelessWidget {
  var busy = true;
  var invert = false;
  var text = "";
  Function func;

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.text,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            height: 50,
            child: LoadingIndicator(
              indicatorType: Indicator.ballZigZagDeflect,
              color: Colors.amber,
            ))
        : Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: invert
                        ? Theme.of(context).primaryColor
                        : Colors.amber.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(40)),
                child: FlatButton(
                    onPressed: func,
                    child: Text(text,
                        style: GoogleFonts.oswald(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: invert
                                ? Colors.amber
                                : Theme.of(context).primaryColor)))),
          );
  }
}
