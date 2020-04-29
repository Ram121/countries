class Country{
  String name, continent, language, capital, government, border, imagePath, mapPath;

  Country({this.name, this.continent, this.language, this.capital,
      this.government, this.border, this.imagePath, this.mapPath});
}

List countries = [
  Country(
    name: 'India',
    continent: 'Asia',
    language: 'Hindi',
    capital: 'New-Delhi',
    government: 'Federal parliamentary constitutional republic',
    border: '87 633 miles / 141 031 km',
    imagePath: 'assets/india.png',
    mapPath: 'assets/indiamap.png'

  ),
  Country(
    name: 'Pakistan',
    continent: 'Asia',
    language: 'English, Urdu',
    capital: 'Islamabad',
    government: 'Federal parliamentary republic',
    border: '4 209 miles / 6 774 km',
    imagePath: 'assets/pakistan.png',
    mapPath: 'assets/pakistanmap.png'

  ),
  Country(
    name: 'China',
    continent: 'Asia',
    language: 'Standard Chinese',
    capital: 'Peking (Beijing)',
    government: 'Socialist one-party state',
    border: '13 762 miles / 22 147 km',
    imagePath: 'assets/china.png',
    mapPath: 'assets/chinamap.png'
  ),
];