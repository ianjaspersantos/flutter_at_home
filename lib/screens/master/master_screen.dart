import 'package:flutter/material.dart';
import 'package:flutterathome/adaptive.dart';
import 'package:flutterathome/screens/about/about_screen.dart';
import 'package:flutterathome/screens/countdown/countdown_screen.dart';
import 'package:flutterathome/screens/intermediary/intermediary_screen.dart';
import 'package:flutterathome/screens/introductory/introductory_screen.dart';
import 'package:flutterathome/screens/phases/phases_screen.dart';
import 'package:flutterathome/screens/pricing/pricing_screen.dart';
import 'package:flutterathome/screens/speakers/speakers_screen.dart';
import 'package:flutterathome/screens/sponsors/sponsors_screen.dart';
import 'package:flutterathome/tiles/navigation_tile.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  PageController _pageController;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final endDrawer = isDisplayDesktop(context)
        ? null
        : Drawer(
            child: SafeArea(
              child: ListView(
                padding: EdgeInsets.zero,
                children: navigationMaps.map((navigationMap) {
                  return NavigationTile(
                    navigationMap: navigationMap,
                    selected: page == navigationMap['page'],
                    onTap: () => animateToPage(navigationMap['page']),
                  );
                }).toList(),
              ),
            ),
          );

    return Scaffold(
      endDrawer: endDrawer,
      body: SafeArea(
        child: Builder(
          builder: (BuildContext context) {
            return Column(
              children: <Widget>[
                Material(
                  elevation: 8.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        InkWell(
                          onTap: () => animateToPage(0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.network('https://athome.flutter.ph/images/logo.png'),
                          ),
                        ),
                        if (isDisplayDesktop(context)) ...[
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: navigationMaps.map((navigationMap) {
                                return NavigationTile(
                                  navigationMap: navigationMap,
                                  selected: page == navigationMap['page'] || page == (navigationMap['page'] as int) + 1,
                                  onTap: () {
                                    if (navigationMap['page'] == 0) {
                                      showMenu<int>(
                                        context: context,
                                        position: RelativeRect.fill,
                                        items: <PopupMenuEntry<int>>[
                                          PopupMenuItem<int>(
                                            value: 0,
                                            child: Text(
                                              'Introduction',
                                              style: Theme.of(context).textTheme.body1,
                                            ),
                                          ),
                                          PopupMenuItem<int>(
                                            value: 1,
                                            child: Text(
                                              'Countdown',
                                              style: Theme.of(context).textTheme.body1,
                                            ),
                                          ),
                                          PopupMenuItem<int>(
                                            value: 2,
                                            child: Text(
                                              'Certification',
                                              style: Theme.of(context).textTheme.body1,
                                            ),
                                          ),
                                        ],
                                      ).then((page) => animateToPage(page));
                                    } else {
                                      animateToPage(navigationMap['page']);
                                    }
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                        ] else ...[
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (int value) => setState(() => page = value),
                    children: <Widget>[
                      IntroductoryScreen(),
                      CountdownScreen(),
                      CertificationScreen(),
                      IntermediaryScreen(
                        title: 'EVENTS',
                        subtitle: 'Flutter At Home',
                        description:
                            'Learn how to use Flutter and Dart to help you build apps for mobile, desktop and web. Transform design concepts to runnable Flutter prototypes. Challenge yourself to build beautiful and powerful Flutter apps from the comfort of your home.',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('JOIN OUR FACEBOOK GROUP'),
                        ),
                      ),
                      DetailsScreen(),
                      IntermediaryScreen(
                        title: 'SCHEDULES',
                        subtitle: 'Webinars',
                        description: 'To participate in our webinars, we encourage you to join our Meetup group and subscribe to our Youtube channel.',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('SUBSCRIBE NOW'),
                        ),
                      ),
                      PhasesScreen(),
                      IntermediaryScreen(
                        title: 'PRIZES',
                        subtitle: 'Have extra fun and excitement while learning!',
                        description:
                            '“Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program.” ~ Linus Torvalds',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('REGISTER NOW'),
                        ),
                      ),
                      PricingScreen(),
                      IntermediaryScreen(
                        title: 'SPEAKERS',
                        subtitle: 'Who Are Speaking',
                        description: 'We gathered all flutter enthusiasts and experts all around the world! Know more about them.',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('APPLY TO US'),
                        ),
                      ),
                      SpeakersScreen(),
                      IntermediaryScreen(
                        title: 'SPONSORS',
                        subtitle: 'Amazing Partners & Sponsors',
                        description: 'Without your contribution, this event would not have been a success. A big thank you from everyone.',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('PARTNER WITH US'),
                        ),
                      ),
                      SponsorsScreen(),
                      IntermediaryScreen(
                        title: 'ABOUT US',
                        subtitle: 'Connect With Us',
                        description: 'To get the latest updates, please join us on our Slack workspace.',
                        button: FlatButton(
                          onPressed: () {},
                          color: Color(0xFF54c5f8),
                          colorBrightness: Brightness.dark,
                          child: Text('JOIN NOW'),
                        ),
                      ),
                      AboutScreen(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void animateToPage(int page) {
    _pageController.animateToPage(page, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }
}

class CertificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
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
                        'LEARN AND GET CERTIFIED FOR FREE!',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      SizedBox(height: 8.0),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Everything online. ',
                            ),
                            TextSpan(
                              text: 'LEARN',
                              style: Theme.of(context).textTheme.display2.copyWith(color: Color(0xFF54c5f8)),
                            ),
                            TextSpan(
                              text: ', ',
                            ),
                            TextSpan(
                              text: 'PROTOTYPE',
                              style: Theme.of(context).textTheme.display2.copyWith(color: Color(0xFF54c5f8)),
                            ),
                            TextSpan(
                              text: ' and ',
                            ),
                            TextSpan(
                              text: 'BUILD',
                              style: Theme.of(context).textTheme.display2.copyWith(color: Color(0xFF54c5f8)),
                            ),
                            TextSpan(text: ' Flutter apps at home.'),
                          ],
                        ),
                        style: Theme.of(context).textTheme.display2.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
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
        ),
        if (isDisplayDesktop(context)) ...[
          Expanded(
            child: Material(
              elevation: 8.0,
              child: Image.network(
                'https://scontent.fcrk1-2.fna.fbcdn.net/v/t1.0-9/69965066_523550985067275_5357895504745201664_o.png?_nc_cat=105&_nc_sid=85a577&_nc_oc=AQmkfW7cYBATOUzpMv57dVESrijNbGzOsSrzMzohPUBR_TchctPaw45FdOeaxICSOSk&_nc_ht=scontent.fcrk1-2.fna&oh=a3737ce47d97dd922ecb75df7eee5a8d&oe=5ED18F49',
                alignment: AlignmentDirectional.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isDisplayDesktop(context)) {
      return Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://athome.flutter.ph/images/banner/speakers-bg-black.jpg',
            alignment: AlignmentDirectional.center,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 64.0,
                vertical: 160.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Color(0xEEEEEEFF),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
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
                                Icon(Icons.home),
                                Text(
                                  'Learn from home',
                                  style: Theme.of(context).textTheme.headline,
                                ),
                              ],
                            ),
                            Container(
                              height: 4.0,
                              width: 64.0,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              'Earn a certificate completely free',
                              style: Theme.of(context).textTheme.body2,
                            ),
                            Text(
                              'Win swags upon course completion',
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xEEEEEEFF),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
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
                                Icon(Icons.devices_other),
                                Text(
                                  'Hone your skills',
                                  style: Theme.of(context).textTheme.headline,
                                ),
                              ],
                            ),
                            Container(
                              height: 4.0,
                              width: 64.0,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              'Join our webinars',
                              style: Theme.of(context).textTheme.body2,
                            ),
                            Text(
                              'We have an active study group on Slack',
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xEEEEEEFF),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
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
                                Icon(Icons.code),
                                Text(
                                  'Challenge yourself',
                                  style: Theme.of(context).textTheme.headline,
                                ),
                              ],
                            ),
                            Container(
                              height: 4.0,
                              width: 64.0,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              'Join the Prototype Challenge',
                              style: Theme.of(context).textTheme.body2,
                            ),
                            Text(
                              'Build a Flutter app in our hackathon',
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xEEEEEEFF),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
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
                              Icon(Icons.home),
                              Text(
                                'Learn from home',
                                style: Theme.of(context).textTheme.headline,
                              ),
                            ],
                          ),
                          Container(
                            height: 4.0,
                            width: 64.0,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            'Earn a certificate completely free',
                            style: Theme.of(context).textTheme.body2,
                          ),
                          Text(
                            'Win swags upon course completion',
                            style: Theme.of(context).textTheme.body2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  child: Container(
                    color: Color(0xEEEEEEFF),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
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
                              Icon(Icons.devices_other),
                              Text(
                                'Hone your skills',
                                style: Theme.of(context).textTheme.headline,
                              ),
                            ],
                          ),
                          Container(
                            height: 4.0,
                            width: 64.0,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            'Join our webinars',
                            style: Theme.of(context).textTheme.body2,
                          ),
                          Text(
                            'We have an active study group on Slack',
                            style: Theme.of(context).textTheme.body2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  child: Container(
                    color: Color(0xEEEEEEFF),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
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
                              Icon(Icons.code),
                              Text(
                                'Challenge yourself',
                                style: Theme.of(context).textTheme.headline,
                              ),
                            ],
                          ),
                          Container(
                            height: 4.0,
                            width: 64.0,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            'Join the Prototype Challenge',
                            style: Theme.of(context).textTheme.body2,
                          ),
                          Text(
                            'Build a Flutter app in our hackathon',
                            style: Theme.of(context).textTheme.body2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
