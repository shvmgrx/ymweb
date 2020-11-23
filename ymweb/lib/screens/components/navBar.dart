import 'package:flutter/material.dart';
import 'package:ymweb/constants/strings.dart';
import 'package:ymweb/constants/textStyles.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              Strings.APPLOGO,
              scale: 2.5,
            ),
            Row(
              children: <Widget>[
                Text(
                  Strings.NAV1,
                  style: TextStyles.navItem,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  Strings.NAV2,
                  style: TextStyles.navItem,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  Strings.NAV3,
                  style: TextStyles.navItem,
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(
                    Icons.public,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Image.network(
            Strings.APPLOGO,
            scale: 2.5,
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
