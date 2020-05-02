import 'package:flutter/material.dart';

import '../../adaptive.dart';

class PricingScreen extends StatefulWidget {
  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final x = [
      Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Material(
                    elevation: 4.0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://athome.flutter.ph/images/bg/page-header-1.jpg',
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.lightbulb_outline,
                                color: Colors.white,
                                size: 80.0,
                              ),
                              Text(
                                '...',
                                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.body2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Finish The App Brewery Flutter course'),
                              Text('Earn a certificate'),
                              Text('Participate on our webinars'),
                              Text('Test your knowledge, and join our Q&A games!'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        FlatButton(
                          onPressed: () {},
                          color: Color(0xFF01579B),
                          colorBrightness: Brightness.dark,
                          child: Text('LEARN FLUTTER'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Material(
                elevation: 8.0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF01579B),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 8.0,
                  ),
                  child: Text('Learn'),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Material(
                    elevation: 4.0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://athome.flutter.ph/images/bg/page-header-2.jpg',
                          alignment: AlignmentDirectional.center,
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.devices_other,
                                color: Colors.white,
                                size: 80.0,
                              ),
                              Text(
                                '...',
                                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.body2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Select 2 (two) from our prototypes pool'),
                              Text('Build the 2 (two) prototypes in Flutter'),
                              Text('Animations are optional, but good to have'),
                              Text('Uploaded on Codepen, Dartpad or Github'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        FlatButton(
                          onPressed: () {},
                          color: Color(0xFFff4747),
                          colorBrightness: Brightness.dark,
                          child: Text('OPENING SOON'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Material(
                elevation: 8.0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFff4747),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 8.0,
                  ),
                  child: Text('Prototype'),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Material(
                    elevation: 4.0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://athome.flutter.ph/images/bg/page-header-3.jpg',
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.code,
                                color: Colors.white,
                                size: 80.0,
                              ),
                              Text(
                                '...',
                                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.body2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Build a Flutter app within 2 (two) weeks'),
                              Text('Must be uploaded on Github (under MIT)'),
                              Text('Publishing of apps is optional'),
                              Text('Theme will be announced soon!'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        FlatButton(
                          onPressed: () {},
                          color: Color(0xFFff4747),
                          colorBrightness: Brightness.dark,
                          child: Text('OPENING SOON'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Material(
                elevation: 8.0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFff4747),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 8.0,
                  ),
                  child: Text('Build'),
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    var child;

    if (isDisplayDesktop(context)) {
      child = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Row(
          children: x.map((e) => Expanded(child: e)).toList(),
        ),
      );
    } else {
      child = PageView(
        controller: pageController,
        children: x,
      );
    }

    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          'https://athome.flutter.ph/images/banner/speakers-bg-black.jpg',
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 64.0,
          ),
          child: child,
        ),
      ],
    );
  }
}
