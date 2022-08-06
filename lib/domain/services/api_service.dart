import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService{
  
  final String _baseUrl = "https://api.thecatapi.com/v1/breeds";

  _setHeaders() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};

  Future getCats() async {
    Uri fullUrl = Uri.parse(_baseUrl);
    final response = await http.get(fullUrl, headers: _setHeaders());
    return await jsonDecode(response.body);
  }



}