import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceXAPI {
  final _baseURL = 'api.spacexdata.com';

  Future<String> getLatestLaunch() async {
    final url = Uri.https(_baseURL, '/v4/launches/latest');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to Retrieve Data: ${response.body}');
    }
    return response.body;
  }
}
