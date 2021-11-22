import 'package:flutter/material.dart';

import 'package:chatapp/widgets/inputs.dart';
import 'package:chatapp/widgets/labels.dart';
import 'package:chatapp/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF0DAFB),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(titulo: 'Registro'),
                  _FormState(),
                  Labels(
                      ruta: 'login',
                      cuenta: '¿Ya tienes cuenta?',
                      crear: '¡Ingresa ahora!'),
                  Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _FormState extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_FormState> {
  final nombreCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInputs(
            icon: Icons.supervised_user_circle,
            placeholder: 'Nombre',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInputs(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInputs(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 2, shape: StadiumBorder(), primary: Colors.blue),
              onPressed: () {
                print(emailCtrl.text);
              },
              child: Container(
                width: 60,
                height: 55,
                child: Center(
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
