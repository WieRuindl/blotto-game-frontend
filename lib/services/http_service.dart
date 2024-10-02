import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  Future<String> sendArmy(generalName, soldiers) async {
    var object = <String, dynamic> {
      'generalName': generalName,
      'soldiers': soldiers,
    };

    final requestBody = jsonEncode(object);
    final url = Uri.parse('http://localhost:8080/blotto');

    final response = await http.post(
        url,
        headers: <String, String>{"Content-type": "application/json"},
        body: requestBody
    );

    if (response.statusCode == 200) {
      return "${response.body}, general $generalName";
    } else {
      return response.body;
    }
  }
}