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
        backgroundColor: Colors.blue,
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
                surfaceTintColor: Colors.cyanAccent,
                color: Colors.grey.withOpacity(.2),
                shadowColor: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Name: $name',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Capital: $capital}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Borders: $borders}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Calling Codes: $callingCodes}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Currency: $currencies}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Area: $area}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Languages: $languages}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Numeric Code: $numericCode}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Timezones: $timezones}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Population: $population}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sub Region: $subregion}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Translation: $translations}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Alpha 2 Code: $alpha2Code}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Native Name: $nativeName}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Region: $region}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Regional Blocks: $regionalBlocs}',
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Top Rated Domain: $topLevelDomain}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
