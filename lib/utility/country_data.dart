import 'dart:convert';
import 'package:countries_search_api/models/countries_model.dart';
import 'package:http/http.dart' as http;

class CountryData {
  final String apiUrl = 'https://restcountries.com/v2/all';

  Future<List<CountriesModel>> fetchCountries() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);

      // Use map and toList to convert the list
      List<CountriesModel> countries = data.map((country) => CountriesModel.fromJson(country)).toList();

      return countries;
    } else {
      // Optionally log the status code or response body for debugging
      print('Working till here');
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
