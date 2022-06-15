import 'package:flutter/material.dart';

import '../../constants.dart';

class MedalGradeMission extends StatelessWidget {
  const MedalGradeMission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultPadding = MediaQuery.of(context).size.height * 0.01;
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xfff4f6f6),
          borderRadius:
              BorderRadius.all(Radius.circular(defaultBorderRadius / 3))),
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Grade mission", style: Theme.of(context).textTheme.subtitle2),
            Container(height: defaultPadding / 2),
            Text("Participate in blogging once or visit the refill station",
                style: Theme.of(context).textTheme.caption)
          ],
        ),
      ),
    );
  }
}
