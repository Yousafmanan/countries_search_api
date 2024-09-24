class CountriesModel {
  CountriesModel({
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
    required this.cioc,
    required this.independent,
    required this.gini,
  });

  final String? name;
  final List<String> topLevelDomain;
  final String? alpha2Code;
  final String? alpha3Code;
  final List<String> callingCodes;
  final String? capital;
  final List<String> altSpellings;
  final String? subregion;
  final String? region;
  final int? population;
  final List<double> latlng;
  final String? demonym;
  final double? area;
  final List<String> timezones;
  final List<String> borders;
  final String? nativeName;
  final String? numericCode;
  final Flags? flags;
  final List<Currency> currencies;
  final List<Language> languages;
  final Translations? translations;
  final String? flag;
  final List<RegionalBloc> regionalBlocs;
  final String? cioc;
  final bool? independent;
  final double? gini;

  factory CountriesModel.fromJson(Map<String, dynamic> json){
    return CountriesModel(
      name: json["name"],
      topLevelDomain: json["topLevelDomain"] == null ? [] : List<String>.from(json["topLevelDomain"]!.map((x) => x)),
      alpha2Code: json["alpha2Code"],
      alpha3Code: json["alpha3Code"],
      callingCodes: json["callingCodes"] == null ? [] : List<String>.from(json["callingCodes"]!.map((x) => x)),
      capital: json["capital"],
      altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
      subregion: json["subregion"],
      region: json["region"],
      population: json["population"],
      latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x)),
      demonym: json["demonym"],
      area: json["area"],
      timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
      borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
      nativeName: json["nativeName"],
      numericCode: json["numericCode"],
      flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
      currencies: json["currencies"] == null ? [] : List<Currency>.from(json["currencies"]!.map((x) => Currency.fromJson(x))),
      languages: json["languages"] == null ? [] : List<Language>.from(json["languages"]!.map((x) => Language.fromJson(x))),
      translations: json["translations"] == null ? null : Translations.fromJson(json["translations"]),
      flag: json["flag"],
      regionalBlocs: json["regionalBlocs"] == null ? [] : List<RegionalBloc>.from(json["regionalBlocs"]!.map((x) => RegionalBloc.fromJson(x))),
      cioc: json["cioc"],
      independent: json["independent"],
      gini: json["gini"],
    );
  }

}

class Currency {
  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  final String? code;
  final String? name;
  final String? symbol;

  factory Currency.fromJson(Map<String, dynamic> json){
    return Currency(
      code: json["code"],
      name: json["name"],
      symbol: json["symbol"],
    );
  }

}

class Flags {
  Flags({
    required this.svg,
    required this.png,
  });

  final String? svg;
  final String? png;

  factory Flags.fromJson(Map<String, dynamic> json){
    return Flags(
      svg: json["svg"],
      png: json["png"],
    );
  }

}

class Language {
  Language({
    required this.iso6391,
    required this.iso6392,
    required this.name,
    required this.nativeName,
  });

  final String? iso6391;
  final String? iso6392;
  final String? name;
  final String? nativeName;

  factory Language.fromJson(Map<String, dynamic> json){
    return Language(
      iso6391: json["iso639_1"],
      iso6392: json["iso639_2"],
      name: json["name"],
      nativeName: json["nativeName"],
    );
  }

}

class RegionalBloc {
  RegionalBloc({
    required this.acronym,
    required this.name,
    required this.otherNames,
    required this.otherAcronyms,
  });

  final String? acronym;
  final String? name;
  final List<String> otherNames;
  final List<String> otherAcronyms;

  factory RegionalBloc.fromJson(Map<String, dynamic> json){
    return RegionalBloc(
      acronym: json["acronym"],
      name: json["name"],
      otherNames: json["otherNames"] == null ? [] : List<String>.from(json["otherNames"]!.map((x) => x)),
      otherAcronyms: json["otherAcronyms"] == null ? [] : List<String>.from(json["otherAcronyms"]!.map((x) => x)),
    );
  }

}

class Translations {
  Translations({
    required this.br,
    required this.pt,
    required this.nl,
    required this.hr,
    required this.fa,
    required this.de,
    required this.es,
    required this.fr,
    required this.ja,
    required this.it,
    required this.hu,
  });

  final String? br;
  final String? pt;
  final String? nl;
  final String? hr;
  final String? fa;
  final String? de;
  final String? es;
  final String? fr;
  final String? ja;
  final String? it;
  final String? hu;

  factory Translations.fromJson(Map<String, dynamic> json){
    return Translations(
      br: json["br"],
      pt: json["pt"],
      nl: json["nl"],
      hr: json["hr"],
      fa: json["fa"],
      de: json["de"],
      es: json["es"],
      fr: json["fr"],
      ja: json["ja"],
      it: json["it"],
      hu: json["hu"],
    );
  }

}
