import 'package:countries_search_api/models/countries_model.dart';
import 'package:countries_search_api/screens/country_detail_screen.dart';
import 'package:countries_search_api/utility/country_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CountryData countryData = CountryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Countries List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.flag, color: Colors.white, size: 30),
          SizedBox(width: 15),
        ],
      ),
      body: FutureBuilder<List<CountriesModel>>(
        future: countryData.fetchCountries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Failed to load data'),
            );
          } else if (snapshot.hasData) {
            List<CountriesModel> countries = snapshot.data!;
            return ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                final country = countries[index];
                return Card(
                  color: Colors.grey.shade200,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CountryDetailScreen(
                            name: country.name ?? 'No Name',
                            topLevelDomain: country.topLevelDomain.join(', '),
                            alpha2Code: country.alpha2Code ?? 'No Data',
                            alpha3Code: country.alpha3Code ?? 'No Data',
                            callingCodes: country.callingCodes.join(', '),
                            capital: country.capital ?? 'No Data',
                            altSpellings: country.altSpellings.join(', '),
                            subregion: country.subregion ?? 'No Data',
                            region: country.region ?? 'No Data',
                            population: country.population?.toString() ?? 'No Data',
                            latlng: country.latlng.join(', '),
                            demonym: country.demonym ?? 'No Data',
                            area: country.area?.toString() ?? 'No Data',
                            timezones: country.timezones.join(', '),
                            borders: country.borders.join(', '),
                            nativeName: country.nativeName ?? 'No Data',
                            numericCode: country.numericCode?.toString() ?? 'No Data',
                            flags: country.flags?.png ?? 'No Data',
                            currencies: country.currencies.map((c) => c.name ?? 'No Data').join(', '),
                            languages: country.languages.map((l) => l.name ?? 'No Data').join(', '),
                            translations: country.translations?.toString() ?? 'No Data',
                            flag: country.flag ?? 'No Data',
                            regionalBlocs: country.regionalBlocs.map((b) => b.name ?? 'No Data').join(', '),
                            country: country,
                          ),
                        ),
                      );
                    },
                    leading: country.flags?.png != null
                        ? Image.network(
                      country.flags!.png!,
                      height: 60,
                      width: 70,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.red);
                      },
                    )
                        : Icon(Icons.flag, color: Colors.grey.shade600),
                    title: Text(
                      country.name ?? 'No Name',
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      country.capital ?? 'No Capital',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text("No countries found"));
          }
        },
      ),
    );
  }
}
