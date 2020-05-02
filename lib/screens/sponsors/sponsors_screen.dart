import 'package:flutter/material.dart';
import 'package:flutterathome/models/data/sponsor.dart';

class SponsorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          'https://athome.flutter.ph/images/bg/cta-bg.jpg',
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        'SUPPORTED BY',
                        style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: sponsors.where((sponsor) => sponsor.isSupporter).map<Widget>((sponsor) {
                        return SponsorTile(
                          sponsor: sponsor,
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        'COMMUNITY PARTNERS',
                        style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: sponsors.where((sponsor) => sponsor.isPartner).map<Widget>((sponsor) {
                        return SponsorTile(
                          sponsor: sponsor,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SponsorTile extends StatelessWidget {
  final Sponsor sponsor;

  const SponsorTile({Key key, @required this.sponsor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Image.network(
        '${sponsor.imageUrl}',
        alignment: AlignmentDirectional.center,
        fit: BoxFit.cover,
      ),
    );
  }
}
