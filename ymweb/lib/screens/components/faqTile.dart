import 'package:flutter/material.dart';
import 'package:ymweb/constants/constValues.dart';

class FaqTile extends StatefulWidget {
  final Widget faq;
  final Widget faa;

  FaqTile({
    this.faq,
    this.faa,
  });

  @override
  _FaqTileState createState() => _FaqTileState();
}

class _FaqTileState extends State<FaqTile> {
  bool arrowUp = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void pullDown() {
    setState(() {
      arrowUp = true;
    });
  }

  void pullUp() {
    setState(() {
      arrowUp = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: mC,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(child: widget.faq),
                                GestureDetector(
                                  onTap: () {
                                    if (arrowUp) {
                                      pullUp();
                                    } else if (!arrowUp) {
                                      pullDown();
                                    }
                                  },
                                  child: Icon(
                                    arrowUp
                                        ? Icons.arrow_circle_up
                                        : Icons.arrow_circle_down,
                                    color: standardBlack,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: arrowUp,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 5.0),
                    child: Row(
                      children: [widget.faa],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
