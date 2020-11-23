import 'package:flutter/material.dart';
import 'package:ymweb/constants/strings.dart';

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
