import 'package:flutter/material.dart';
import 'package:ymweb/constants/constValues.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

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
