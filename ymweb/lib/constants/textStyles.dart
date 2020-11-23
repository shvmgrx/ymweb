import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:ymweb/constants/constValues.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle navItem = TextStyle(
    fontSize: 18,
    color: grey1,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
  );

  static final TextStyle heading = TextStyle(
    fontSize: 35,
    color: grey2,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w700,
  );

  static final TextStyle subheading = TextStyle(
    fontSize: 18,
    color: grey1,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w400,
  );

  static final TextStyle download = TextStyle(
    fontSize: 11,
    color: Colors.white,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w200,
  );

  static final TextStyle store = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w500,
  );

  static final TextStyle instructionHeading = TextStyle(
    fontSize: 25,
    color: grey2,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w500,
  );

  static final TextStyle instructionSubheading = TextStyle(
    fontSize: 15,
    color: grey1,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w300,
  );
  static final TextStyle review = TextStyle(
    fontSize: 15,
    color: standardBlack,
    fontFamily: 'Kiona',
    fontWeight: FontWeight.w300,
  );
}
