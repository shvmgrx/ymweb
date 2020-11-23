import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

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
