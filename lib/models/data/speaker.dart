import 'package:meta/meta.dart';

class Speaker {
  final String imageUrl;
  final String name;
  final String description;

  const Speaker({
    @required this.imageUrl,
    @required this.name,
    @required this.description,
  });
}

const speakers = [
  const Speaker(
    imageUrl: 'https://athome.flutter.ph/images/teams/s-1.png',
    name: 'Joshua De Guzman',
    description: 'Philippines ᛫ Flutter and Dart GDE',
  ),
  const Speaker(
    imageUrl: 'https://athome.flutter.ph/images/teams/s-2.png',
    name: 'Oliver Atienza',
    description: 'Philippines ᛫ Flutter Developer ᛫ Panel Discussion',
  ),
  const Speaker(
    imageUrl: 'https://athome.flutter.ph/images/teams/s-3.png',
    name: 'Muhammed Salih Guler',
    description: 'Germany ᛫ Flutter and Dart GDE ᛫ Senior Mobile Engineer, Klar',
  ),
  const Speaker(
    imageUrl: 'https://athome.flutter.ph/images/teams/s-4.png',
    name: 'Waleed Arshad',
    description: 'Pakistan ᛫ Flutter and Dart GDE',
  ),
  const Speaker(
    imageUrl: 'https://athome.flutter.ph/images/teams/s-5.png',
    name: 'TruongSinh Tran-Nguyen',
    description: 'United States ᛫ Flutter and Dart GDE ᛫ Cisco',
  ),
];
