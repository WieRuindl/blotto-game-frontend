import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BattleCell extends StatelessWidget {
  BattleCell({super.key});

  final  _controller = TextEditingController();

  String get text => _controller.text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0,),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0,),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [ FilteringTextInputFormatter.digitsOnly, ],
      ),
    );
  }
}
