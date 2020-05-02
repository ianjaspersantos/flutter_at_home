import 'package:flutter/material.dart';
import 'package:flutterathome/adaptive.dart';

class CountdownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var child;
    if (isDisplayDesktop(context)) {
      child = StreamBuilder(
        stream: Stream.periodic(Duration(seconds: 1)),
        builder: (context, snapshot) {
          final started = DateTime.now().isAfter(DateTime(2020, 5, 2, 18));
          final dateTime = DateTime.fromMicrosecondsSinceEpoch(DateTime(2020, 5, 2, 18).difference(DateTime.now()).inMicroseconds).toUtc();

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '${started ? 'Happening Right Now' : 'Remaining Days'}',
                    style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${started ? 'the perfect time to learn Flutter is now.' : 'before the first webinar.'}',
                    style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: 24.0,
                ),
              ),
              if (!started)
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.day - 1}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Days',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.hour}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Hours',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.minute}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Minutes',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.second}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Seconds',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      );
    } else {
      child = StreamBuilder(
          stream: Stream.periodic(Duration(seconds: 1)),
          builder: (context, snapshot) {
            final started = DateTime.now().isAfter(DateTime(2020, 5, 2, 18));
            final dateTime = DateTime.fromMicrosecondsSinceEpoch(DateTime(2020, 5, 2, 18).difference(DateTime.now()).inMicroseconds).toUtc();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${started ? 'Happening Right Now' : 'Remaining Days'}',
                      style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '${started ? 'the perfect time to learn Flutter is now.' : 'before the first webinar.'}',
                      style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                if (!started)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.day - 1}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Days',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.hour}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Hours',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.minute}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Minutes',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '${dateTime.second}'.padLeft(2, '0'),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white, fontSize: 40.0),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Seconds',
                              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            );
          });
    }

    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        if (isDisplayDesktop(context)) ...[
          Positioned(
            top: 16.0,
            left: 64.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.rotate(
                angle: 320.0,
                child: Image.network(
                  'https://avatars0.githubusercontent.com/u/47053319?s=280&v=4',
                  width: 240.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 160.0,
            left: 64.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.rotate(
                angle: 0.45,
                child: Image.network(
                  'https://avatars0.githubusercontent.com/u/47053319?s=280&v=4',
                  width: 240.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 64.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.rotate(
                angle: 0.45,
                child: Image.network(
                  'https://avatars0.githubusercontent.com/u/47053319?s=280&v=4',
                  width: 240.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 160.0,
            right: 64.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.rotate(
                angle: 320.0,
                child: Image.network(
                  'https://avatars0.githubusercontent.com/u/47053319?s=280&v=4',
                  width: 240.0,
                ),
              ),
            ),
          ),
        ],
        Positioned(
          top: 16.0,
          child: Material(
            elevation: 4.0,
            child: Container(
              width: MediaQuery.of(context).size.shortestSide * 0.80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 8.0,
                ),
              ),
              child: Image.network(
                'https://athome.flutter.ph/images/about/h1-gallery-img-7.jpg',
                alignment: AlignmentDirectional.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Center(
          child: Material(
            elevation: 8.0,
            child: Container(
              width: MediaQuery.of(context).size.shortestSide * 0.60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 8.0,
                ),
              ),
              child: Image.network(
                'https://athome.flutter.ph/images/about/main-home-img-1.jpg',
                alignment: AlignmentDirectional.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.bottomCenter,
                end: AlignmentDirectional.topCenter,
                colors: [
                  Color(0xFF01579B),
                  Color(0xFF01579B).withOpacity(0.5),
                ],
              ),
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
