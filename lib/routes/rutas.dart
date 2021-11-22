import 'package:flutter/material.dart';

import 'package:chatapp/paginas/chat_page.dart';
import 'package:chatapp/paginas/loading_page.dart';
import 'package:chatapp/paginas/login_page.dart';
import 'package:chatapp/paginas/registro_page.dart';
import 'package:chatapp/paginas/usuarios_page.dart';

import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRutas = {
  'usuarios': (_) => UsuarioPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'registro': (_) => RegistroPage(),
  'loading': (_) => LoadingPage(),
};
