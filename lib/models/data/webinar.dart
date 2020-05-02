import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class Webinar {
  final String speakerPhoto;
  final String speakerName;
  final String speakerCountry;
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;

  Webinar({
    @required this.speakerPhoto,
    @required this.speakerName,
    @required this.speakerCountry,
    @required this.title,
    @required this.description,
    @required this.startDate,
    @required this.endDate,
  });

  String get monthWithDate {
    return DateFormat('MMM dd').format(startDate);
  }

  String get runningTime {
    return '${DateFormat('hh:mm a').format(startDate)} - ${DateFormat('hh:mm a').format(endDate)}';
  }
}

final webinars = [
  Webinar(
    speakerPhoto: 'https://athome.flutter.ph/images/teams/s-3.png',
    speakerName: 'Muhammed Salih Guler',
    speakerCountry: 'Germany',
    title: 'Effective App Architecture and State Management in Flutter',
    description:
        'In this talk, we are going to go over the Flutter’s State Management options, how we can use them and last but not least we will learn how we can put all of this information to create the best architecture for our application.',
    startDate: DateTime(2020, 5, 2, 18),
    endDate: DateTime(2020, 5, 2, 19),
  ),
  Webinar(
    speakerPhoto: 'https://athome.flutter.ph/images/teams/s-5.png',
    speakerName: 'TruongSinh Tran-Nguyen',
    speakerCountry: 'United States',
    title: 'AutomaticKeepAliveClientMixin deserves more spotlight',
    description:
        'Keeping the states among different tab bar view, or among different steps in stepper, AutomaticKeepAliveClientMixin is much cleaner way than other alternative approaches',
    startDate: DateTime(2020, 5, 6, 19),
    endDate: DateTime(2020, 5, 6, 20),
  ),
];
