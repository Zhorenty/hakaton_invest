import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobile_app/model/property_model.dart';

class RemoteDataSource {
  final Dio dio;

  RemoteDataSource(this.dio);

  Future register() async {
    const String url = 'http://192.168.88.131:8080/register';
    try {
      final response = await dio.post(
        url,
        data: {'username': 'knov', 'password': '12345'},
      );
      if (response.statusCode == 200) {
        print('success');
      }
    } catch (e) {
      print(e);
    }
  }
}



//   Future<List<Property>> _getPersonFromUrl() async {
//     final String url = 'http://192.168.88.131:8080/endpoint';
//     print(url);
//     final response = await dio.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       final persons = json.decode(response.body);
//       return (persons['results'] as List)
//           .map((person) => PersonModel.fromJson(person))
//           .toList();
//     } else {
//       throw ServerException();
//     }
//   }
// }
