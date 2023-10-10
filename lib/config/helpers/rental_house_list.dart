import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../domain/domain.dart';
import '../enviroments.dart';

class RentalHouseList {
  final url = Enviroments.baseUrl;

  Future<List<RentalHouseModel>> getByUserId(String userId, String token) async {
    
    String urlFinal = "$url/rentalHouse/user/$userId";

    try {
      final response = await http.get(Uri.parse(urlFinal),
          headers: {'Authorization': 'Bearer $token'});

      if (response.statusCode == 200 || response.statusCode == 201) {
        return List.from(json.decode(response.body))
            .map((e) => RentalHouseModel.fromJson(e))
            .toList();
      } else {
        return Future.error(response.statusCode);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
