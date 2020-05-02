import 'package:flutter/material.dart';

class IntroductoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          'https://athome.flutter.ph/images/banner/banner-2.jpg',
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Flutter At Home 2020',
                      style: Theme.of(context).textTheme.display2.copyWith(color: Colors.black),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'From Flutter Philippines',
                      style: Theme.of(context).textTheme.body1,
                    ),
                    Text(
                      'A collaborative community for anyone interested in developing apps using Flutter and Dart.',
                      style: Theme.of(context).textTheme.body2,
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                FlatButton(
                  onPressed: () {},
                  color: Color(0xFF54c5f8),
                  colorBrightness: Brightness.dark,
                  child: Text('REGISTER NOW'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    ;
  }
}
