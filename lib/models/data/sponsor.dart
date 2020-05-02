import 'package:meta/meta.dart';

class Sponsor {
  final String imageUrl;
  final SponsorType type;

  const Sponsor({
    @required this.imageUrl,
    @required this.type,
  });

  bool get isPartner => type == SponsorType.partner;

  bool get isSupporter => type == SponsorType.supporter;
}

enum SponsorType {
  partner,
  supporter,
}

const sponsors = [
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_google_developers.png',
    type: SponsorType.supporter,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_flutterph.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_techph_org.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_recruitday.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_edukasyonph.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_stratpoint.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_dsc_loyola.png',
    type: SponsorType.partner,
  ),
  Sponsor(
    imageUrl: 'https://athome.flutter.ph/images/partners/logo_reactjs_philippines.png',
    type: SponsorType.partner,
  ),
];
