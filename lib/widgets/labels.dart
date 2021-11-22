import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String cuenta;
  final String crear;

  const Labels({
    Key? key,
    required this.ruta,
    required this.cuenta,
    required this.crear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.cuenta,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
            child: Text(this.crear,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
