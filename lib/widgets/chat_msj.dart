import 'package:flutter/material.dart';

class ChatMsj extends StatelessWidget {
  final String? texto;
  final String uid;
  final AnimationController animacion;

  const ChatMsj(
      {Key? key,
      required this.texto,
      required this.uid,
      required this.animacion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animacion,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(parent: animacion, curve: Curves.easeInOut),
        child: Container(
          child: this.uid == '123' ? _mimsj() : _nomimsj(),
        ),
      ),
    );
  }

  Widget _mimsj() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(right: 5, bottom: 5, left: 50),
        child: Text(this.texto!),
        decoration: BoxDecoration(
            color: Color(0xffA7DFFC), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _nomimsj() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(
          left: 50,
          bottom: 5,
          right: 5,
        ),
        child: Text(this.texto!),
        decoration: BoxDecoration(
            color: Color(0xffA7FCBD), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
