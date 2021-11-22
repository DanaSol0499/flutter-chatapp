import 'package:flutter/material.dart';

class BontonAzul extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const BontonAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2, shape: StadiumBorder(), primary: Colors.blue),
        onPressed: this.onPressed,
        child: Container(
          width: 60,
          height: 55,
          child: Center(
            child: Text(
              this.text,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ));
  }
}
