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
}
