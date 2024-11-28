import 'dart:convert';

import 'package:formation_odc/api/constants.dart';
import 'package:http/http.dart' as http;

class UserService {
  static fetchUsers() async {
    String endpoint = "/users";
    Uri url = Uri.parse("${Constants.baseUrl}/$endpoint");

    http.Response response = await http.get(url);

    var results = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return results;
    } else {
      return null;
    }
  }
}
