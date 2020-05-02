import 'package:flutter/material.dart';
import 'package:flutterathome/adaptive.dart';

const navigationMaps = [
  {
    'name': 'Home',
    'page': 0,
  },
  {
    'name': 'Events',
    'page': 3,
  },
  {
    'name': 'Schedules',
    'page': 5,
  },
  {
    'name': 'Prizes',
    'page': 7,
  },
  {
    'name': 'Speakers',
    'page': 9,
  },
  {
    'name': 'Sponsors',
    'page': 11,
  },
  {
    'name': 'About Us',
    'page': 13,
  },
];

class NavigationTile extends StatelessWidget {
  final Map<String, dynamic> navigationMap;
  final bool selected;
  final GestureTapCallback onTap;

  const NavigationTile({
    @required this.navigationMap,
    @required this.selected,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isDisplayDesktop(context)) {
      return InkWell(
        onTap: onTap,
        child: Container(
          alignment: AlignmentDirectional.center,
          decoration: decoration(context, selected),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('${navigationMap['name']}'),
        ),
      );
    }

    if (navigationMap['page'] == 0) {
      return Container(
        alignment: AlignmentDirectional.center,
        decoration: decoration(context, selected),
        child: ExpansionTile(
          title: Text('${navigationMap['name']}'),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.remove),
              title: Text('Introductory'),
              onTap: onTap,
            ),
            ListTile(
              leading: Icon(Icons.remove),
              title: Text('Countdown'),
              onTap: onTap,
            ),
            ListTile(
              leading: Icon(Icons.remove),
              title: Text('Certification'),
              onTap: onTap,
            ),
          ],
        ),
      );
    }

    return Container(
      alignment: AlignmentDirectional.center,
      decoration: decoration(context, selected),
      child: ListTile(
        title: Text('${navigationMap['name']}'),
        selected: selected,
        onTap: onTap,
      ),
    );
  }

  BoxDecoration decoration(BuildContext context, bool selected) {
    if (selected) {
      if (isDisplayDesktop(context)) {
        return BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFF01579B),
              width: 8.0,
            ),
          ),
        );
      } else {
        return BoxDecoration(
          border: Border(
            left: BorderSide(
              color: Color(0xFF01579B),
              width: 8.0,
            ),
          ),
        );
      }
    }

    return null;
  }
}
