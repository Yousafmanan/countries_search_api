import 'package:countries_search_api/models/countries_model.dart';
import 'package:flutter/material.dart';

class CountryDetailScreen extends StatelessWidget {
  String name;
  String topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  String callingCodes;
  String capital;
  String altSpellings;
  String subregion;
  String region;
  String population;
  String latlng;
  String demonym;
  String area;
  String timezones;
  String borders;
  String nativeName;
  String numericCode;
  String flags;
  String currencies;
  String languages;
  String translations;
  String flag;
  String regionalBlocs;

  CountryDetailScreen(
      {super.key,
      required this.name,
      required this.topLevelDomain,
      required this.alpha2Code,
      required this.alpha3Code,
      required this.callingCodes,
      required this.capital,
      required this.altSpellings,
      required this.subregion,
      required this.region,
      required this.population,
      required this.latlng,
      required this.demonym,
      required this.area,
      required this.timezones,
      required this.borders,
      required this.nativeName,
      required this.numericCode,
      required this.flags,
      required this.currencies,
      required this.languages,
      required this.translations,
      required this.flag,
      required this.regionalBlocs,
      required CountriesModel country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Country Detail',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(flags),
                ),
              ),
              Card(
                color: Colors.deepPurple.withOpacity(0.2),
                shadowColor: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Name', name),
                      _buildDetailRow('Capital', capital),
                      _buildDetailRow('Borders', borders),
                      _buildDetailRow('Calling Code', callingCodes),
                      _buildDetailRow('Currency', currencies),
                      _buildDetailRow('Area', area),
                      _buildDetailRow('Languages', languages),
                      _buildDetailRow('Numeric Code', numericCode),
                      _buildDetailRow('TimeZone', timezones),
                      _buildDetailRow('Population', population),
                      _buildDetailRow('Sub Region', subregion),
                      _buildDetailRow('Translations', translations),
                      _buildDetailRow('Alpha 3 Code', alpha3Code),
                      _buildDetailRow('Region', region),
                      _buildDetailRow('Regional Blocks', regionalBlocs),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDetailRow(String label, String? value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '$label:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value ?? 'N/A',
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ],
    ),
  );
}