import 'package:flutter/material.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';
import 'package:ymweb/screens/components/faqTile.dart';

class FaqBox extends StatelessWidget {
  const FaqBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: Container(
            child: Text(
              Strings.FAQ,
              style: TextStyles.heading,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: FaqTile(
            faq: Text(
              Strings.FAQ1,
              style: TextStyles.faq,
            ),
            faa: Container(
              child: Text(
                Strings.FAQA1,
                style: TextStyles.review,
              ),
            ),
          ),
        ),
        FaqTile(
          faq: Text(
            Strings.FAQ2,
            style: TextStyles.faq,
          ),
          faa: Container(
            child: Text(
              Strings.FAQA2,
              style: TextStyles.review,
            ),
          ),
        ),
        FaqTile(
          faq: Text(
            Strings.FAQ3,
            style: TextStyles.faq,
          ),
          faa: Container(
            child: Text(
              Strings.FAQA3,
              style: TextStyles.review,
            ),
          ),
        ),
        FaqTile(
          faq: Text(
            Strings.FAQ4,
            style: TextStyles.faq,
          ),
          faa: Container(
            child: Text(
              Strings.FAQA4,
              style: TextStyles.review,
            ),
          ),
        ),
      ],
    );
  }
}
