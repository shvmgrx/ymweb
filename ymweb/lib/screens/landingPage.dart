import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:ymweb/constants/constValues.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

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

class InstructionBox extends StatelessWidget {
  const InstructionBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Container(
            child: Text(
              Strings.HOWWORKS,
              style: TextStyles.heading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Image.asset('images/step1.png', height: 450, width: 250),
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      color: mC,
                      boxShadow: [
                        BoxShadow(
                          color: mCD,
                          offset: Offset(-10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: mCL,
                          offset: Offset(0, -10),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          Strings.STEP1TXT,
                          style: TextStyles.instructionHeading,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            Strings.STEP1SUBTXT,
                            style: TextStyles.instructionSubheading,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      color: mC,
                      boxShadow: [
                        BoxShadow(
                          color: mCD,
                          offset: Offset(-10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: mCL,
                          offset: Offset(0, -10),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          Strings.STEP2TXT,
                          style: TextStyles.instructionHeading,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            Strings.STEP2SUBTXT,
                            style: TextStyles.instructionSubheading,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset('images/step2.png', height: 450, width: 250),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Image.asset('images/step3.png', height: 450, width: 250),
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      color: mC,
                      boxShadow: [
                        BoxShadow(
                          color: mCD,
                          offset: Offset(-10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: mCL,
                          offset: Offset(0, -10),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          Strings.STEP3TXT,
                          style: TextStyles.instructionHeading,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            Strings.STEP3SUBTXT,
                            style: TextStyles.instructionSubheading,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BrandBox extends StatelessWidget {
  const BrandBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Image.network(Strings.BRAND1, height: 50, width: 80),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.network(Strings.BRAND2, height: 50, width: 100),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.network(Strings.BRAND3, height: 50, width: 100),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.network(Strings.BRAND4, height: 50, width: 100),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.network(Strings.BRAND5, height: 50, width: 100),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.network(Strings.BRAND6, height: 50, width: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IntroBox extends StatelessWidget {
  const IntroBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Row(
            children: [
              Container(
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      ImageAutoSlider(
                        assetImages: [
                          AssetImage('images/step1.png'),
                          AssetImage('images/step2.png'),
                          AssetImage('images/step3.png'),
                        ],
                        imageHeight: 380,
                        boxFit: BoxFit.fitHeight,
                        slideMilliseconds: 550,
                        durationSecond: 3,
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.black),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              Strings.APPLELOGO,
                              scale: 6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Strings.DOWNLOAD,
                                      style: TextStyles.download),
                                  Text(Strings.APPSTORE,
                                      style: TextStyles.store),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.black),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                Strings.PLAYLOGO,
                                scale: 7.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(Strings.DOWNLOAD,
                                        style: TextStyles.download),
                                    Text(Strings.PLAYSTORE,
                                        style: TextStyles.store),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
