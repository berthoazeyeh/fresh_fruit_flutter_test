import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:text_flutter/models/user.dart';

class ApiClient {
  final String baseUrl;

  ApiClient({required this.baseUrl});

  Future<Map<String, dynamic>> signup(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup_endpoint'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erreur lors de l\'inscription');
    }
  }

  Future<User> login(User user) async {
    // Implémentez la logique pour la connexion
    final response = await http.post(
      Uri.parse('$baseUrl/signup_endpoint'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user),
    );

    if (response.statusCode == 200) {
      final user = User.fromJson(jsonDecode(response.body));
      return user;
    } else {
      throw Exception('Erreur lors de l\'authentification');
    }
  }
}
