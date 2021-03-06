import 'package:eog/components/submit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/my_logo.dart';
import '../components/success_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ctrlGas = MoneyMaskedTextController();
  var ctrlEtanol = MoneyMaskedTextController();
  var busy = false;
  var completed = false;
  Text resultText1;
  Text resultText2;
  Icon iconsResul;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(),
          SizedBox(height: 50),
          completed
              ? SuccessWidget(
                  result1: resultText1,
                  result2: resultText2,
                  iconResult: iconsResul,
                  toClean: toCleanForm)
              : SubmitForm(
                  gasCtrl: ctrlGas,
                  etaCtrl: ctrlEtanol,
                  busy: busy,
                  submitFunc: calculate)
        ],
      ),
    );
  }

  toCleanForm() {
    setState(() {
      ctrlGas = MoneyMaskedTextController();
      ctrlEtanol = MoneyMaskedTextController();
      completed = false;
      busy = false;
    });
  }

  Future calculate() {
    double etanol =
        double.parse(ctrlEtanol.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gasolina =
        double.parse(ctrlGas.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double resp = etanol / gasolina;
    setState(() {
      completed = false;
      busy = true;
    });

    return Future.delayed(
        const Duration(seconds: 2),
        () => {
              setState(() {
                if (resp >= 0.7) {
                  resultText1 = Text(
                    "Compensa utilizar ",
                    style:
                        GoogleFonts.oswald(fontSize: 22, color: Colors.white),
                  );
                  resultText2 = Text(
                    "Gasolina",
                    style: GoogleFonts.oswald(fontSize: 22, color: Colors.red),
                  );
                } else {
                  resultText1 = Text(
                    "Compensa utilizar ",
                    style:
                        GoogleFonts.oswald(fontSize: 22, color: Colors.white),
                  );
                  resultText2 = Text(
                    "Etanol",
                    style:
                        GoogleFonts.oswald(fontSize: 22, color: Colors.green),
                  );
                }
                completed = true;
                busy = false;
              })
            });
  }
}
