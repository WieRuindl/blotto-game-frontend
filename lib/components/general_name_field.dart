import 'package:flutter/material.dart';

class GeneralNameField extends StatelessWidget {
  GeneralNameField({super.key});

  final _controller = TextEditingController();

  String get text => _controller.text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Whats your name, general?"),
        const SizedBox(width: 10,),
        SizedBox(
          width: 100,
          child: TextField(
            controller: _controller,
          ),
        ),
      ],
    );
  }
}
