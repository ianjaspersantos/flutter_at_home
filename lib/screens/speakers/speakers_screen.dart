import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterathome/models/data/speaker.dart';

import '../../adaptive.dart';

class SpeakersScreen extends StatefulWidget {
  @override
  _SpeakersScreenState createState() => _SpeakersScreenState();
}

class _SpeakersScreenState extends State<SpeakersScreen> {
  PageController _pageController;

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
    var children;
    if (isDisplayDesktop(context)) {
      children = [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speakers[0],
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speakers[1],
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speakers[2],
              ),
            ),
            SizedBox(width: 24.0),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speakers[3],
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speakers[4],
              ),
            ),
            SizedBox(width: 24.0),
            Spacer(),
            SizedBox(width: 24.0),
          ],
        ),
      ];
    } else {
      children = speakers.map<Widget>((speaker) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(width: 24.0),
            Expanded(
              child: SpeakerTile(
                speaker: speaker,
              ),
            ),
            SizedBox(width: 24.0),
          ],
        );
      }).toList();
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
            padding: const EdgeInsets.symmetric(
              horizontal: 48.0,
              vertical: 80.0,
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Material(
                    type: MaterialType.transparency,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          _pageController.previousPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 24.0),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: children,
                  ),
                ),
                SizedBox(width: 24.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Material(
                    type: MaterialType.transparency,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                        onPressed: () {
                          _pageController.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
                        },
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

class SpeakerTile extends StatelessWidget {
  final Speaker speaker;

  const SpeakerTile({
    Key key,
    @required this.speaker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: AspectRatio(
            aspectRatio: 1.0 / 1.0,
            child: Image.network(
              '${speaker.imageUrl}',
              alignment: AlignmentDirectional.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        AutoSizeText(
          '${speaker.name}',
          maxLines: 1,
          style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        AutoSizeText(
          '${speaker.description}',
          maxLines: 1,
          style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
