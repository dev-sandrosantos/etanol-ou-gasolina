import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'button_loading.dart';
import 'my_input.dart';

// ignore: must_be_immutable
class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var etaCtrl = MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm(
      {@required this.gasCtrl,
      @required this.etaCtrl,
      @required this.busy,
      @required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Input(label: "Preço/Gasolina", controller: gasCtrl),
          Input(label: "Preço/Etanol", controller: etaCtrl),
        ]),
        SizedBox(height: 50),
        LoadingButton(
            busy: busy, text: "Calcular", invert: false, func: submitFunc)
      ],
    );
  }
}
