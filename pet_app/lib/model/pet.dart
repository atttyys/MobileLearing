import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> fetchPet() {
  return http.get(Uri.parse('https://petstore.swagger.io/v2/pet/666'));
}

class Pet {
  final int id;
  final String name;

  const Pet({
    required this.id,
    required this.name,
  });

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'],
      name: json['name'],
    );
  }
}

Future<Pet> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://petstore.swagger.io/v2/pet/666'));

  if (response.statusCode == 200) {
    return Pet.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}