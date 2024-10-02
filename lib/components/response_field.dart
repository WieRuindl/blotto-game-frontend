import 'package:flutter/material.dart';

class ResponseField extends StatelessWidget {
  ResponseField({super.key});

  final  _controller = TextEditingController();

  set text(value) {
    _controller.text = value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 500,
          child: TextField(
            controller: _controller,
          ),
        ),
      ],
    );
  }
}
