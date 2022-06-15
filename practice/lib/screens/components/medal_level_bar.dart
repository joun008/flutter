import 'package:flutter/material.dart';

import '../../constants.dart';

class MedalLevelBar extends StatelessWidget {
  const MedalLevelBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultPadding = MediaQuery.of(context).size.height * 0.01;
    return SizedBox(
      width: double.infinity,
      height: (MediaQuery.of(context).size.height) * 0.08,
      child: Column(
        children: [
          Container(height: defaultPadding * 2),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Level Up EXP",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        "2500/25000points",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
                Container(height: defaultPadding),
                ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                    child: LinearProgressIndicator(
                      value: 0.3,
                      valueColor: new AlwaysStoppedAnimation<Color>(subColor),
                      backgroundColor: Color(0xfff4f6f6),
                      minHeight: 13,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
