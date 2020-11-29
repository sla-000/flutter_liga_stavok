import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:logging/logging.dart';

final Logger _log = Logger('Jersey');

class JerseyLook extends StatelessWidget {
  const JerseyLook({
    Key key,
    this.jersey,
  }) : super(key: key);

  final team_profile.Jersey jersey;

  @override
  Widget build(BuildContext context) {
// colors are RRGGBB hex
// base - base color
// stripes - if true - stripes are vertical
// number - number color
// sleeve - sleeves color and second color if stripes
    final List<Color> colors = List.generate(8, (int index) => null);

    final Color numberColor = parseColor(jersey?.number);

    final Color baseColor = parseColor(jersey?.base);

    final Color sleeveColor = parseColor(jersey?.sleeve);
    _log.finest(() => 'build: baseColor=${jersey?.base}'
        ', sleeveColor=${jersey?.sleeve}'
        ', type=${jersey?.type}');

    for (int q = 0; q < colors.length; ++q) {
      colors[q] = baseColor;
    }

    if (baseColor != sleeveColor) {
      if (jersey?.stripes ?? false) {
        colors[0] = sleeveColor;
        colors[2] = sleeveColor;
        colors[5] = sleeveColor;
        colors[7] = sleeveColor;
      } else {
        colors[0] = sleeveColor;
        colors[3] = sleeveColor;
      }
    }

    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Cube(
                  color: colors[0],
                  borderLeft: true,
                  borderTop: true,
                  borderBottom: true,
                ),
                Cube(
                  color: colors[1],
                  borderTop: true,
                ),
                Cube(
                  color: colors[2],
                  borderTop: true,
                ),
                Cube(
                  color: colors[3],
                  borderTop: true,
                  borderRight: true,
                  borderBottom: true,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Cube(color: Colors.transparent),
                Cube(
                  color: colors[4],
                  borderLeft: true,
                ),
                Cube(
                  color: colors[5],
                  borderRight: true,
                ),
                const Cube(color: Colors.transparent),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Cube(color: Colors.transparent),
                Cube(
                  color: colors[6],
                  borderLeft: true,
                  borderBottom: true,
                ),
                Cube(
                  color: colors[7],
                  borderRight: true,
                  borderBottom: true,
                ),
                const Cube(color: Colors.transparent),
              ],
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 10,
          right: 10,
          bottom: 20,
          child: Center(
              child: Text(
            '11',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: 35,
                  color: numberColor,
                ),
          )),
        ),
      ],
    );
  }
}

Color parseColor(String color) {
  if ((color?.length ?? 0) != 6) {
    return const Color.fromARGB(0xFF, 0x80, 0x80, 0x80);
  }

  final int r = int.tryParse(color.substring(0, 2), radix: 16);
  final int g = int.tryParse(color.substring(2, 4), radix: 16);
  final int b = int.tryParse(color.substring(4, 6), radix: 16);

  return Color.fromARGB(0xFF, r ?? 0x80, g ?? 0x80, b ?? 0x80);
}

class Cube extends StatelessWidget {
  const Cube({
    Key key,
    this.borderTop = false,
    this.borderBottom = false,
    this.borderLeft = false,
    this.borderRight = false,
    this.color = Colors.white,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  final bool borderTop;
  final bool borderBottom;
  final bool borderLeft;
  final bool borderRight;

  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        border: Border(
          top: BorderSide(
            color: borderColor,
            width: 1.0,
            style: borderTop ? BorderStyle.solid : BorderStyle.none,
          ),
          bottom: BorderSide(
            color: borderColor,
            width: 1.0,
            style: borderBottom ? BorderStyle.solid : BorderStyle.none,
          ),
          left: BorderSide(
            color: borderColor,
            width: 1.0,
            style: borderLeft ? BorderStyle.solid : BorderStyle.none,
          ),
          right: BorderSide(
            color: borderColor,
            width: 1.0,
            style: borderRight ? BorderStyle.solid : BorderStyle.none,
          ),
        ),
      ),
      child: Center(),
    );
  }
}
