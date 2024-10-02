import 'package:blotto_game_ui/components/battlefield.dart';
import 'package:blotto_game_ui/components/general_name_field.dart';
import 'package:blotto_game_ui/components/response_field.dart';
import 'package:blotto_game_ui/services/http_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final HttpService _httpService = HttpService();

  final generalNameField = GeneralNameField();
  final responseField = ResponseField();
  final battlefield = Battlefield();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            generalNameField,
            const SizedBox(height: 10,),
            const Text("Place your army"),
            const SizedBox(height: 10,),
            battlefield,
            TextButton(
              onPressed: sendArmy,
              style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              child: const Text('Ready for battle'),
            ),
            responseField,
          ]
        ),
      ),
    );
  }

  void sendArmy() async {
    responseField.text = "";

    var soldiers = battlefield.getSoldiers();
    var valid = isValid(soldiers);
    if (valid.isEmpty) {
      final response = await _httpService.sendArmy(generalNameField.text, soldiers);
      responseField.text = response;
    } else {
      responseField.text = valid;
    }
  }

  String isValid(soldiers) {
    if (soldiers.length != 9) {
      return "Soldiers must be 9";
    }

    int sum = 0;
    for (var i = 0; i < soldiers.length; ++i) {
      var value = soldiers[i];
      if (value == null || value.isEmpty) {
        return "you should enter value to all cells";
      }
      sum += int.parse(value);
    }
    if (sum != 100) {
      return "Sum of soldiers must be 100";
    }

    return "";
  }
}
