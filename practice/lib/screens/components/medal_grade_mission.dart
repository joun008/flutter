import 'package:flutter/material.dart';

import '../../constants.dart';

class MedalGradeMission extends StatelessWidget {
  const MedalGradeMission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xfff4f6f6),
          borderRadius:
              BorderRadius.all(Radius.circular(defaultBorderRadius / 2))),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Grade mission", style: Theme.of(context).textTheme.subtitle2),
            const SizedBox(height: defaultPadding / 2),
            Text("Participate in blogging once or visit the refill station",
                style: Theme.of(context).textTheme.caption)
          ],
        ),
      ),
    );
  }
}
