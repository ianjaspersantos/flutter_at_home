import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          'https://athome.flutter.ph/images/bg/footer-bg.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 11,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Flutter At Home',
                              style: Theme.of(context).textTheme.display2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Flutter Philippines is a collaborative community for everyone who’s interested in learning Flutter and Dart.',
                              style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(FontAwesomeIcons.facebookSquare),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.twitterSquare),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.linkedin),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.white54,
                indent: 24.0,
                endIndent: 24.0,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Copyright © 2020',
                        style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white54),
                      ),
                      Text(
                        ' - ',
                        style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white54),
                      ),
                      Text(
                        'Flutter Philippines',
                        style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
