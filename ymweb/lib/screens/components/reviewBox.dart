import 'package:flutter/material.dart';
import 'package:ymweb/constants/constValues.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 450,
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
                    Row(
                      children: [
                        Text(
                          Strings.RV1,
                          style: TextStyles.instructionHeading,
                        ),
                        Spacer(),
                        Image.network(
                          Strings.APPLELOGOBLACK,
                          scale: 7,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.RVDETAILS1,
                        style: TextStyles.instructionSubheading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.RVCOMMENT1,
                        style: TextStyles.review,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 450,
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
                    Row(
                      children: [
                        Text(
                          Strings.RV2,
                          style: TextStyles.instructionHeading,
                        ),
                        Spacer(),
                        Image.network(
                          Strings.PLAYLOGOBLACK,
                          scale: 4.5,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.RVDETAILS2,
                        style: TextStyles.instructionSubheading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.RVCOMMENT2,
                        style: TextStyles.review,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
