import 'package:flutter/material.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Strings.TAGLINE,
              style: TextStyles.heading,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                Strings.SUBTAGLINE,
                style: TextStyles.subheading,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
