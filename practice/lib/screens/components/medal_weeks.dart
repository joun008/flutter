import 'package:flutter/material.dart';

import '../../constants.dart';

class MedalWeeks extends StatelessWidget {
  const MedalWeeks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultPadding = MediaQuery.of(context).size.height * 0.01;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width:
              (MediaQuery.of(context).size.width - defaultPadding * 10) * 0.45,
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius / 3))),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: bgColor,
                  child: Icon(
                    Icons.forest,
                    color: subColor,
                    size: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Week of co2",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "2020 CO2",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: subColor,
                      ),
                )
              ],
            ),
          ]),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width:
              (MediaQuery.of(context).size.width - defaultPadding * 10) * 0.45,
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius / 3))),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: bgColor,
                  child: Icon(
                    Icons.grade,
                    color: subColor,
                    size: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Week of EXP",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "2500 exp",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: subColor,
                      ),
                )
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
