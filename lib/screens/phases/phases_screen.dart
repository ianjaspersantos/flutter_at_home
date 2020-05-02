import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterathome/adaptive.dart';
import 'package:flutterathome/models/data/webinar.dart';

class PhasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          'https://athome.flutter.ph/images/banner/speakers-bg-black.jpg',
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(64.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            left: BorderSide(
                              color: Color(0xFF54c5f8),
                              width: 8.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            AutoSizeText(
                              'Phase 1',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            AutoSizeText(
                              'April 25, 2020 - May 30, 2020',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            left: BorderSide(
                              color: Color(0xFF54c5f8),
                              width: 8.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            AutoSizeText(
                              'Phase 2',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            AutoSizeText(
                              'Moved to later date',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            left: BorderSide(
                              color: Color(0xFF54c5f8),
                              width: 8.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            AutoSizeText(
                              'Phase 3',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.headline,
                            ),
                            AutoSizeText(
                              'Moved to a later date',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isDisplayDesktop(context))
              Expanded(
                flex: 2,
                child: Container(
                  child: Scrollbar(
                    child: ListView.separated(
                      padding: EdgeInsets.all(40.0),
                      itemCount: webinars.length,
                      itemBuilder: (context, index) {
                        return WebinarTile(
                          webinar: webinars.elementAt(index),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 16.0,
                        );
                      },
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class WebinarTile extends StatelessWidget {
  final Webinar webinar;

  const WebinarTile({
    Key key,
    @required this.webinar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              color: Color(0xFF54c5f8),
              width: 8.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '${webinar.monthWithDate}',
                  style: Theme.of(context).textTheme.headline.copyWith(color: Color(0xFF54c5f8)),
                  textAlign: TextAlign.end,
                ),
                Text(
                  '${webinar.runningTime}',
                  style: Theme.of(context).textTheme.subhead.copyWith(color: Color(0xFF54c5f8)),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${webinar.title}',
                    style: Theme.of(context).textTheme.headline,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '${webinar.speakerName} ᛫ ${webinar.speakerCountry}',
                    style: Theme.of(context).textTheme.subhead,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '${webinar.description}',
                    style: Theme.of(context).textTheme.caption,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(width: 24.0),
            Image.network(
              '${webinar.speakerPhoto}',
              alignment: AlignmentDirectional.center,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.shortestSide * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
