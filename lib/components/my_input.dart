import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  var label = "";
  var controller = MoneyMaskedTextController();
  Input({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 60,
            child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                style: GoogleFonts.oswald(color: Colors.amber, fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: label)),
          ),
        ),
      ],
    );
  }
}
