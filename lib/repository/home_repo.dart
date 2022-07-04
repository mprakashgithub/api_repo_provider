import 'dart:convert';

import 'package:api_repo_provider/model/home_model.dart';
import 'package:http/http.dart' as http;

class HomeRepo {
  List<HomeModel> countryList = [];
  Future<HomeModel?> getCountryData() async {
    try {
      var request = http.Request(
          'GET', Uri.parse('https://countriesnow.space/api/v0.1/countries/'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = HomeModel.fromJson(map);
        return model;
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      throw (e);
    }
  }
}
