import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterathome/adaptive.dart';

class IntermediaryScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final Widget button;

  const IntermediaryScreen({
    Key key,
    this.title,
    this.subtitle,
    this.description,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        IntermediaryBackground(),
        Container(
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
                      AutoSizeText(
                        '$title',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.display4.copyWith(color: Color(0xFF54c5f8)),
                        textAlign: TextAlign.center,
                      ),
                      AutoSizeText(
                        '$subtitle',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline.copyWith(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      AutoSizeText(
                        '$description',
                        style: Theme.of(context).textTheme.body1.copyWith(color: Colors.black54),
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
                  child: button,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class IntermediaryBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.topStart,
          child: IntermediaryDecoration(
            imageUrl: 'https://flutter.dev/assets/clock/hero/hero-oval-3cd35fb7734b890588788570de32b7e9902c7d39c98a61a23b5451c2dd720ce0.svg',
            alignment: AlignmentDirectional.topStart,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topCenter,
          child: IntermediaryDecoration(
            imageUrl: 'https://flutter.dev/assets/clock/hero/hero-dots-6083cc1bc0003f920e18b765bf8d46fc3cb2088340aab853a23bf0fd4a1f8597.svg',
            alignment: AlignmentDirectional.topCenter,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: IntermediaryDecoration(
            imageUrl: 'https://flutter.dev/assets/clock/hero/hero-circle-8d90a990f038430547d07699498d3ab0068e2cc030ada1faca0d8ed10be390a6.svg',
            alignment: AlignmentDirectional.topEnd,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: IntermediaryDecoration(
            imageUrl: 'https://flutter.dev/assets/clock/hero/hero-diamond-d26c8799abbd82d1dd99615991f357307d12c7b493ec8fdbc63290b19f315843.svg',
            alignment: AlignmentDirectional.bottomStart,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: IntermediaryDecoration(
            imageUrl: 'https://flutter.dev/assets/clock/hero/hero-clock-81573480d502524a5df31e3099469ba8462423d558df21c709cd5060e4aa3fec.svg',
            alignment: AlignmentDirectional.bottomEnd,
          ),
        ),
      ],
    );
  }
}

class IntermediaryDecoration extends StatelessWidget {
  final String imageUrl;
  final AlignmentGeometry alignment;

  const IntermediaryDecoration({
    Key key,
    @required this.imageUrl,
    @required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Transform.scale(
        alignment: alignment,
        scale: isDisplayDesktop(context) ? 0.8 : 0.4,
        child: Image.network(
          '$imageUrl',
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
