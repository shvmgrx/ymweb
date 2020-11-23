import 'package:flutter/material.dart';

import 'package:ymweb/screens/components/brandBox.dart';
import 'package:ymweb/screens/components/faqBox.dart';
import 'package:ymweb/screens/components/instructionBox.dart';
import 'package:ymweb/screens/components/introBox.dart';
import 'package:ymweb/screens/components/reviewBox.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          children: [
            IntroBox(),
            BrandBox(),
            InstructionBox(),
            ReviewBox(),
            FaqBox()
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
