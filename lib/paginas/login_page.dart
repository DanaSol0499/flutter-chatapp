import 'package:chatapp/widgets/boton_azul.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chatapp/services/auth_service.dart';

import 'package:chatapp/helpers/mostrar_alerta.dart';

import 'package:chatapp/widgets/inputs.dart';
import 'package:chatapp/widgets/labels.dart';
import 'package:chatapp/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCAF6FA),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(titulo: 'Messenger'),
                  _FormState(),
                  Labels(
                      ruta: 'registro',
                      cuenta: '¿No tienes cuenta?',
                      crear: '¡Crea una ahora!'),
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
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
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
          BontonAzul(
            text: 'Ingrese',
            onPressed: authService.autenticando
                ? () => {}
                : () async {
                    FocusScope.of(context).unfocus();
                    final loginOk = await authService.login(
                        emailCtrl.text.trim(), passCtrl.text.trim());

                    if (loginOk) {
                      //Conectar a nuestro socket server
                      //Navegar a otra pantalla
                      Navigator.pushReplacementNamed(context, 'usuarios');
                    } else {
                      //Mostrar alerta
                      mostarAlerta(context, 'Login incorrecto',
                          'Ingresar correo y contraseña');
                    }
                  },
          )
        ],
      ),
    );
  }
}
